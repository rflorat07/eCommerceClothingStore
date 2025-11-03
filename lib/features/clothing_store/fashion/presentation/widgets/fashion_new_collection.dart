import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import '../theme/fashion_app_color.dart';

class FashionNewCollection extends ConsumerWidget {
  const FashionNewCollection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(fashionPageControllerProvider);
    final collectionsAsync = ref.watch(fashionCollectionsProvider);
    final settings = ref.watch(fashionSettingsProvider);

    return collectionsAsync.when(
      data: (collections) =>
          _newCollectionsContent(pageController, collections),
      loading: () => _buildShimmerLoading(settings.enableShimmer),
      error: (error, _) => _buildErrorWidget(ref, error),
    );
  }

  /// Builds the loading widget with shimmer
  Widget _buildShimmerLoading(bool enableShimmer) {
    if (enableShimmer) {
      return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: const RoundedContainer(
          height: 158.0,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        ),
      );
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  /// Builds the error widget with retry option
  Widget _buildErrorWidget(
    WidgetRef ref,
    Object error,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.red.shade200),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red.shade600,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            'Error loading collections',
            style: TextStyle(
              color: Colors.red.shade800,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            error.toString(),
            style: TextStyle(
              color: Colors.red.shade600,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => ref.refresh(fashionCollectionsProvider),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade600,
              foregroundColor: Colors.white,
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

Column _newCollectionsContent(
  PageController pageViewController,
  List<Collection> collections,
) {
  return Column(
    spacing: 12.0,
    children: [
      Container(
        height: 158.0,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: PageView.builder(
          controller: pageViewController,
          scrollDirection: Axis.horizontal,
          itemCount: collections.length,
          itemBuilder: (context, index) => RoundedContainer(
            isNetworkImage: false,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            imageUrl: collections[index].imagePath,
          ),
        ),
      ),

      SmoothPageIndicator(
        count: collections.length,
        effect: ScrollingDotsEffect(
          fixedCenter: false,
          dotWidth: 10.0,
          dotHeight: 10.0,
          activeDotScale: 1.0,
          dotColor: FashionAppColors.primary.withValues(alpha: 0.2),
          activeDotColor: FashionAppColors.primary,
        ),
        controller: pageViewController,
      ),
    ],
  );
}
