import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/utils.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.onPressed,
    this.iconColor,
    this.icon,
    this.svgIcon,
    this.backgroundColor,
    this.size = 20.0,
    this.borderWidth = 1.0,
    this.showBorder = false,
    this.borderRadius = 100.0,
    this.borderColor = Colors.grey,
  });

  final IconData? icon;
  final bool showBorder;
  final Color? iconColor;
  final Color borderColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double? width, height, size;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius, borderWidth;
  final SvgPicture? svgIcon;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (dark
                ? Colors.black.withValues(alpha: 0.9)
                : Colors.white.withValues(alpha: 0.9)),
        borderRadius: BorderRadius.circular(borderRadius),
        border: showBorder
            ? Border.all(color: borderColor, width: borderWidth)
            : null,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0.0),
        onPressed: onPressed,
        icon: svgIcon ?? Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}
