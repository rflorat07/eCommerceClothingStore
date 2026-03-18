import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';

/// A rounded container with support for background images, borders, and taps.
class DSRoundedContainer extends StatelessWidget {
  const DSRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.onTap,
    this.height,
    this.margin,
    this.padding,
    this.imageUrl,
    this.borderRadius,
    this.showBorder = false,
    this.fit = BoxFit.cover,
    this.isNetworkImage = true,
    this.radius = DSRadii.medium,
    this.borderWidth = 1.0,
    this.isBorderRadiusCircular = true,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.black12,
  });

  /// How the background image should be inscribed.
  final BoxFit? fit;

  /// Optional child widget.
  final Widget? child;

  /// Callback when the container is tapped.
  final Function()? onTap;

  /// Optional background image (asset or network URL).
  final String? imageUrl;

  /// The border color when [showBorder] is `true`.
  final Color borderColor;

  /// The background color of the container.
  final Color backgroundColor;

  /// Width and height of the container.
  final double? width, height;

  /// The border corner radius.
  final double radius;

  /// The border width when [showBorder] is `true`.
  final double borderWidth;

  /// Padding inside the container.
  final EdgeInsetsGeometry? padding;

  /// Margin around the container.
  final EdgeInsetsGeometry? margin;

  /// Custom [BorderRadius]. Used only when [isBorderRadiusCircular] is `false`.
  final BorderRadius? borderRadius;

  /// Whether to show a border, use a circular radius, or load a network image.
  final bool showBorder, isBorderRadiusCircular, isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: isBorderRadiusCircular
              ? BorderRadius.circular(radius)
              : borderRadius,
          border: showBorder
              ? Border.all(color: borderColor, width: borderWidth)
              : null,
          image: imageUrl != null
              ? isNetworkImage
                    ? DecorationImage(
                        image: CachedNetworkImageProvider(imageUrl!),
                        fit: fit,
                      )
                    : DecorationImage(
                        image: AssetImage(imageUrl ?? ''),
                        fit: fit,
                      )
              : null,
        ),
        child: child,
      ),
    );
  }
}
