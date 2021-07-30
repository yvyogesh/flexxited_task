import 'dart:io' show Platform;

bool checkPlatform() {
  try {
    if (Platform.isAndroid || Platform.isIOS) return true;
    return false;
  } catch (e) {
    return false;
  }
}
