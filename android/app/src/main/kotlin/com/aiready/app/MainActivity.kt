package com.aiready.app

import com.android.installreferrer.api.InstallReferrerClient
import com.android.installreferrer.api.InstallReferrerStateListener
import com.android.installreferrer.api.ReferrerDetails
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "ai_ready/install_referrer"

    private var installReferrerClient: InstallReferrerClient? = null
    private var cachedReferrer: String? = null
    private var hasTriedToFetch: Boolean = false

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL,
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "getInstallReferrer" -> {
                    getInstallReferrer { referrer ->
                        // Return the raw referrer string or null on failure.
                        result.success(referrer)
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun getInstallReferrer(callback: (String?) -> Unit) {
        // If we already have a cached value, return it immediately.
        cachedReferrer?.let {
            callback(it)
            return
        }

        // If we've already tried and failed, avoid reconnecting on every call.
        if (hasTriedToFetch && cachedReferrer == null) {
            callback(null)
            return
        }

        hasTriedToFetch = true

        val context = applicationContext
        val client = InstallReferrerClient.newBuilder(context).build()
        installReferrerClient = client

        try {
            client.startConnection(object : InstallReferrerStateListener {
                override fun onInstallReferrerSetupFinished(responseCode: Int) {
                    when (responseCode) {
                        InstallReferrerClient.InstallReferrerResponse.OK -> {
                            try {
                                val response: ReferrerDetails = client.installReferrer
                                cachedReferrer = response.installReferrer
                                callback(cachedReferrer)
                            } catch (_: Exception) {
                                callback(null)
                            } finally {
                                safelyEndConnection()
                            }
                        }
                        else -> {
                            safelyEndConnection()
                            callback(null)
                        }
                    }
                }

                override fun onInstallReferrerServiceDisconnected() {
                    // No-op; next call can retry if needed.
                }
            })
        } catch (_: Exception) {
            safelyEndConnection()
            callback(null)
        }
    }

    private fun safelyEndConnection() {
        try {
            installReferrerClient?.endConnection()
        } catch (_: Exception) {
            // Ignore cleanup errors.
        } finally {
            installReferrerClient = null
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        safelyEndConnection()
    }
}

