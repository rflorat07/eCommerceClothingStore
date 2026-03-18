import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// Builds the **Widgets** folder in the Widgetbook navigation tree.
WidgetbookFolder widgetsCatalog() {
  return WidgetbookFolder(
    name: 'Widgets',
    children: [
      // ── Containers ───────────────────────────────────────
      WidgetbookComponent(
        name: 'DSRoundedContainer',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => Center(
              child: DSRoundedContainer(
                width: 200,
                height: 120,
                radius: context.knobs.double.slider(
                  label: 'radius',
                  min: 0,
                  max: 32,
                  initialValue: 8,
                ),
                showBorder: context.knobs.boolean(
                  label: 'showBorder',
                  initialValue: false,
                ),
                backgroundColor: DSColors.surfaceVariantLight,
                padding: const EdgeInsets.all(DSSpacing.md),
                child: const Center(child: Text('Content')),
              ),
            ),
          ),
          WidgetbookUseCase(
            name: 'With Border',
            builder: (context) => const Center(
              child: DSRoundedContainer(
                width: 200,
                height: 120,
                showBorder: true,
                borderColor: DSColors.primary,
                borderWidth: 2,
                padding: EdgeInsets.all(DSSpacing.md),
                child: Center(child: Text('Bordered')),
              ),
            ),
          ),
        ],
      ),

      // ── Icons ────────────────────────────────────────────
      WidgetbookComponent(
        name: 'DSCircularIcon',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) => Center(
              child: DSCircularIcon(
                icon: Icons.favorite,
                size: context.knobs.double.slider(
                  label: 'size',
                  min: 12,
                  max: 48,
                  initialValue: 24,
                ),
                iconColor: DSColors.error,
                showBorder: context.knobs.boolean(
                  label: 'showBorder',
                  initialValue: false,
                ),
                width: 48,
                height: 48,
                onPressed: () {},
              ),
            ),
          ),
          WidgetbookUseCase(
            name: 'With Border',
            builder: (context) => const Center(
              child: DSCircularIcon(
                icon: Icons.arrow_back,
                size: 24,
                width: 40,
                height: 40,
                showBorder: true,
                borderColor: DSColors.outline,
                iconColor: DSColors.primary,
              ),
            ),
          ),
          WidgetbookUseCase(
            name: 'Gallery',
            builder: (context) => Center(
              child: Wrap(
                spacing: DSSpacing.md,
                runSpacing: DSSpacing.md,
                children: const [
                  DSCircularIcon(
                    icon: Icons.favorite,
                    iconColor: DSColors.error,
                    width: 44,
                    height: 44,
                  ),
                  DSCircularIcon(
                    icon: Icons.shopping_bag_outlined,
                    iconColor: DSColors.primary,
                    width: 44,
                    height: 44,
                  ),
                  DSCircularIcon(
                    icon: Icons.share,
                    iconColor: DSColors.info,
                    width: 44,
                    height: 44,
                  ),
                  DSCircularIcon(
                    icon: Icons.search,
                    iconColor: DSColors.neutral70,
                    width: 44,
                    height: 44,
                    showBorder: true,
                    borderColor: DSColors.outline,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // ── Circular Image ───────────────────────────────────
      WidgetbookComponent(
        name: 'DSCircularImage',
        useCases: [
          WidgetbookUseCase(
            name: 'Placeholder',
            builder: (context) => Center(
              child: DSCircularImage(
                image: '',
                isNetworkImage: false,
                width: context.knobs.double.slider(
                  label: 'size',
                  min: 32,
                  max: 120,
                  initialValue: 56,
                ),
                height: context.knobs.double.slider(
                  label: 'size',
                  min: 32,
                  max: 120,
                  initialValue: 56,
                ),
                backgroundColor: DSColors.surfaceVariantLight,
              ),
            ),
          ),
        ],
      ),

      // ── Skeletons ────────────────────────────────────────
      WidgetbookComponent(
        name: 'DSSkeleton',
        useCases: [
          WidgetbookUseCase(
            name: 'Rectangle',
            builder: (context) => Center(
              child: DSSkeleton(
                width: context.knobs.double.slider(
                  label: 'width',
                  min: 50,
                  max: 300,
                  initialValue: 200,
                ),
                height: context.knobs.double.slider(
                  label: 'height',
                  min: 8,
                  max: 250,
                  initialValue: 20,
                ),
                radius: context.knobs.double.slider(
                  label: 'radius',
                  min: 0,
                  max: 24,
                  initialValue: 4,
                ),
              ),
            ),
          ),
          WidgetbookUseCase(
            name: 'Circle',
            builder: (context) => Center(
              child: DSCircleSkeleton(
                size: context.knobs.double.slider(
                  label: 'size',
                  min: 16,
                  max: 80,
                  initialValue: 40,
                ),
              ),
            ),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'DSPinterestGridItemSkeleton',
        useCases: [
          WidgetbookUseCase(
            name: 'Even Index',
            builder: (context) => const SingleChildScrollView(
              padding: EdgeInsets.all(DSSpacing.md),
              child: SizedBox(
                width: 180,
                child: DSPinterestGridItemSkeleton(index: 0),
              ),
            ),
          ),
          WidgetbookUseCase(
            name: 'Odd Index',
            builder: (context) => const SingleChildScrollView(
              padding: EdgeInsets.all(DSSpacing.md),
              child: SizedBox(
                width: 180,
                child: DSPinterestGridItemSkeleton(index: 1),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
