import 'package:shared_preferences/shared_preferences.dart';
import '../data/daily_tips.dart';

class TipService {
  static const _kKeyIndex = 'daily_tip_index_v1';

  Future<String> nextTip() async {
    final prefs = await SharedPreferences.getInstance();
    final current = prefs.getInt(_kKeyIndex) ?? 0;
    final tip = kDailyTips.isEmpty ? "" : kDailyTips[current % kDailyTips.length];
    // advance for the next time
    await prefs.setInt(_kKeyIndex, (current + 1) % (kDailyTips.isEmpty ? 1 : kDailyTips.length));
    return tip;
  }
}
