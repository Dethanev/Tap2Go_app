import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart'; // Haptic/SystemSound（可選）

/// 全域音效工具： anywhere 直接叫 Sound.click() / Sound.success()
class Sound {
  Sound._(); // 不允許被 new

  /// 是否啟用音效（設定頁可切）
  static bool enabled = true;

  /// 全域音量（0.0 ~ 1.0）
  static double volume = 5.0;

  /// 播放器池：避免快速連點被截斷
  static final List<AudioPlayer> _pool = List.generate(
    3,
    (_) =>
        AudioPlayer()
          ..setPlayerMode(PlayerMode.lowLatency)
          ..setReleaseMode(ReleaseMode.stop),
  );
  static int _i = 0;

  /// 取得下一台播放器（輪替）
  static AudioPlayer _next() {
    final p = _pool[_i];
    _i = (_i + 1) % _pool.length;
    return p;
  }

  /// 內部：播放資產音效
  static Future<void> _play(String assetPath) async {
    if (!enabled) return;
    final p = _next();
    try {
      await p.stop(); // 確保每次從頭播
      await p.setVolume(volume);
      await p.play(AssetSource(assetPath));
    } catch (_) {
      // 忽略錯誤即可；必要時可上報或 fallback
    }
  }

  // ===== 封裝好的快捷方法（依需求增減）=====

  static Future<void> click1() => _play('sounds/UI/button-click-289742.mp3');
  static Future<void> click2() => _play('sounds/UI/button-305770.mp3');
  static Future<void> fart1() => _play('sounds/Fart/fart1.wav');
  static Future<void> fart2() => _play('sounds/Fart/fart2.wav');
  static Future<void> fart3() => _play('sounds/Fart/fart3.wav');
  static Future<void> fart4() => _play('sounds/Fart/fart4.wav');
  static Future<void> fart5() => _play('sounds/Fart/fart5.wav');

  /// 可選：同時給觸覺/系統點擊（實機設定擋掉時仍有回饋）
  static Future<void> tactileClick() async {
    HapticFeedback.selectionClick();
    try {
      await SystemSound.play(SystemSoundType.click);
    } catch (_) {}
    await click1(); // 保底自家音效
  }

  /// 可選：釋放資源（通常不需要呼叫）
  static Future<void> dispose() async {
    for (final p in _pool) {
      await p.dispose();
    }
  }
}
