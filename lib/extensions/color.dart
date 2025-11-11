import 'dart:ui';

extension ColorExtension on Color {
  /// Applies alpha as a percentage (0–100%) using withAlpha.
  Color withAlphaPercent(double percent) {
    assert(percent >= 0 && percent <= 100, 'Percent must be between 0 and 100');
    final alpha = (255 * (percent / 100)).round();
    return withAlpha(alpha);
  }

  ColorFilter get colorFilter => ColorFilter.mode(this, BlendMode.srcIn);
}