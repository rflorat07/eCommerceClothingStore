/// Design tokens: Duration scale for the eCommerce Design System.
abstract final class DSDurations {
  /// 200ms — Micro-interactions: hover, focus, ripple
  static const Duration short = Duration(milliseconds: 200);

  /// 300ms — Standard transitions: expand, collapse, fade
  static const Duration medium = Duration(milliseconds: 300);

  /// 500ms — Complex animations: page transitions, modals
  static const Duration long = Duration(milliseconds: 500);
}
