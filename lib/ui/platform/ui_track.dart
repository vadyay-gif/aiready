import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// UI presentation track: mobile (iOS/Android) or web/desktop.
enum UITrack {
  mobile,
  web,
}

/// Determines the current UI track based on platform and screen size.
/// 
/// Rules:
/// - If running on web AND screen width >= 900px → web track
/// - Otherwise → mobile track
UITrack currentUITrack(BuildContext context) {
  if (kIsWeb) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 900) {
      return UITrack.web;
    }
  }
  return UITrack.mobile;
}

/// Convenience helper to check if current track is mobile.
bool isMobileTrack(BuildContext context) {
  return currentUITrack(context) == UITrack.mobile;
}

/// Convenience helper to check if current track is web.
bool isWebTrack(BuildContext context) {
  return currentUITrack(context) == UITrack.web;
}
