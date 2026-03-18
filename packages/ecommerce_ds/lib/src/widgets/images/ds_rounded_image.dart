import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';

/// A rounded-rectangle image container with optional tap callback.
class DSRoundedImage extends StatelessWidget {
  const DSRoundedImage({
    super.key,
    this.width,
    this.height,
    this.border,
    this.padding,
    this.onPressed,
    this.backgroundColor,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.borderRadius = DSRadii.extraLarge,
    this.applyImageRadius = true,
  });

  /// Width and height of the container.
  final double? width, height;

  /// The image path (asset) or URL (network).
  final String imageUrl;

  /// Whether to clip the image corners to match the container radius.
  final bool applyImageRadius;

  /// Optional border decoration.
  final BoxBorder? border;

  /// The background color behind the image.
  final Color? backgroundColor;

  /// How the image should be inscribed.
  final BoxFit? fit;

  /// Padding inside the container.
  final EdgeInsetsGeometry? padding;

  /// Whether [imageUrl] is a network URL.
  final bool isNetworkImage;

  /// Callback when the image container is tapped.
  final VoidCallback? onPressed;

  /// The border radius of the container.
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
