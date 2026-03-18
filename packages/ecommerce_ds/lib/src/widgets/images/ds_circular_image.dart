import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// A circular image with support for asset and network images.
class DSCircularImage extends StatelessWidget {
  const DSCircularImage({
    super.key,
    required this.image,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.padding = 0.0,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
  });

  /// How the image should be inscribed into the circle.
  final BoxFit? fit;

  /// The image path (asset) or URL (network).
  final String image;

  /// Whether [image] is a network URL.
  final bool isNetworkImage;

  /// An optional color overlay applied on top of the image.
  final Color? overlayColor;

  /// The background color behind the image.
  final Color? backgroundColor;

  /// Width and height of the circle.
  final double width, height;

  /// Inner padding around the image.
  final double padding;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (isDark ? Colors.black : Colors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImage
            ? CachedNetworkImage(
                fit: fit,
                color: overlayColor,
                imageUrl: image,
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(value: progress.progress),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            : Image(fit: fit, image: AssetImage(image), color: overlayColor),
      ),
    );
  }
}
