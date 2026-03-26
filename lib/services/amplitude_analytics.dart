import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Minimal Amplitude analytics helper using the HTTP API.
///
/// The API key is provided via a compile-time environment value:
///   --dart-define=AMPLITUDE_API_KEY=YOUR_KEY
class AmplitudeAnalytics {
  AmplitudeAnalytics._();

  static bool _initialized = false;

  static const String _apiKey = String.fromEnvironment('AMPLITUDE_API_KEY');

  static Future<void> init() async {
    if (_initialized) {
      return;
    }

    if (kIsWeb) {
      _initialized = true;
      return;
    }

    if (_apiKey.isEmpty) {
      _initialized = false;
      return;
    }

    _initialized = true;
  }

  static Future<void> logEvent(String eventType) async {
    if (!_initialized || kIsWeb) {
      return;
    }

    try {
      final deviceId = await _getDeviceId();

      final client = HttpClient();
      final request = await client.postUrl(
        Uri.parse('https://api2.amplitude.com/2/httpapi'),
      );

      request.headers.contentType = ContentType.json;

      final body = <String, Object>{
        'api_key': _apiKey,
        'events': [
          <String, Object>{
            'event_type': eventType,
            'time': DateTime.now().millisecondsSinceEpoch,
            'device_id': deviceId,
          },
        ],
      };

      request.add(utf8.encode(jsonEncode(body)));
      final response = await request.close();
      await response.drain();
      client.close(force: true);
    } catch (_) {
      // Swallow errors to avoid impacting app behavior.
    }
  }

  static Future<String> _getDeviceId() async {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString('amplitude_device_id');
    if (existing != null && existing.isNotEmpty) {
      return existing;
    }

    final random = Random.secure();
    final bytes = List<int>.generate(8, (_) => random.nextInt(256));
    final buffer = StringBuffer();
    for (final b in bytes) {
      buffer.write(b.toRadixString(16).padLeft(2, '0'));
    }
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final generatedId = 'dev_${buffer.toString()}_${timestamp.toString()}';

    await prefs.setString('amplitude_device_id', generatedId);
    return generatedId;
  }
}

