import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../tokens/tokens.dart';

/// A circular icon button with optional border, shadow, and SVG support.
class DSCircularIcon extends StatelessWidget {
  const DSCircularIcon({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.boxShadow,
    this.onPressed,
    this.iconColor,
    this.icon,
    this.svgIcon,
    this.backgroundColor,
    this.size = 20.0,
    this.borderWidth = 1.0,
    this.showBorder = false,
    this.borderRadius = DSRadii.circular,
    this.borderColor = Colors.grey,
  });

  /// The [IconData] to display. Ignored if [svgIcon] is provided.
  final IconData? icon;

  /// Whether to show a border around the icon.
  final bool showBorder;

  /// The color of the icon.
  final Color? iconColor;

  /// The border color when [showBorder] is `true`.
  final Color borderColor;

  /// An optional SVG widget that replaces the icon.
  final SvgPicture? svgIcon;

  /// An optional box shadow.
  final BoxShadow? boxShadow;

  /// The background color of the container.
  final Color? backgroundColor;

  /// Callback when the icon button is pressed.
  final VoidCallback? onPressed;

  /// Width and height of the outer container.
  final double? width, height;

  /// The icon size.
  final double? size;

  /// Padding around the container.
  final EdgeInsetsGeometry? padding;

  /// Margin around the container.
  final EdgeInsetsGeometry? margin;

  /// The border radius of the container.
  final double borderRadius;

  /// The border width when [showBorder] is `true`.
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (isDark
                ? Colors.black.withValues(alpha: 0.9)
                : Colors.white.withValues(alpha: 0.9)),
        borderRadius: BorderRadius.circular(borderRadius),
        border: showBorder
            ? Border.all(color: borderColor, width: borderWidth)
            : null,
        boxShadow: boxShadow != null ? [boxShadow!] : null,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: svgIcon ?? Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}
