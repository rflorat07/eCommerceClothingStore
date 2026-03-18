import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// Builds the **Tokens** folder in the Widgetbook navigation tree.
WidgetbookFolder tokensCatalog() {
  return WidgetbookFolder(
    name: 'Tokens',
    children: [
      WidgetbookComponent(
        name: 'Colors',
        useCases: [
          WidgetbookUseCase(
            name: 'Neutral Scale',
            builder: (context) => const _ColorPalette(
              title: 'Neutral Scale',
              colors: [
                _ColorEntry('neutral0', DSColors.neutral0),
                _ColorEntry('neutral5', DSColors.neutral5),
                _ColorEntry('neutral10', DSColors.neutral10),
                _ColorEntry('neutral20', DSColors.neutral20),
                _ColorEntry('neutral30', DSColors.neutral30),
                _ColorEntry('neutral40', DSColors.neutral40),
                _ColorEntry('neutral50', DSColors.neutral50),
                _ColorEntry('neutral60', DSColors.neutral60),
                _ColorEntry('neutral70', DSColors.neutral70),
                _ColorEntry('neutral80', DSColors.neutral80),
                _ColorEntry('neutral90', DSColors.neutral90),
                _ColorEntry('neutral95', DSColors.neutral95),
                _ColorEntry('neutral100', DSColors.neutral100),
              ],
            ),
          ),
          WidgetbookUseCase(
            name: 'Accent & Semantic',
            builder: (context) => const _ColorPalette(
              title: 'Accent & Semantic Colors',
              colors: [
                _ColorEntry('primary', DSColors.primary),
                _ColorEntry('primaryContainer', DSColors.primaryContainer),
                _ColorEntry('secondary', DSColors.secondary),
                _ColorEntry('secondaryContainer', DSColors.secondaryContainer),
                _ColorEntry('tertiary', DSColors.tertiary),
                _ColorEntry('error', DSColors.error),
                _ColorEntry('errorContainer', DSColors.errorContainer),
                _ColorEntry('success', DSColors.success),
                _ColorEntry('info', DSColors.info),
              ],
            ),
          ),
          WidgetbookUseCase(
            name: 'Surfaces & Outline',
            builder: (context) => const _ColorPalette(
              title: 'Surfaces & Outline',
              colors: [
                _ColorEntry('backgroundLight', DSColors.backgroundLight),
                _ColorEntry('surfaceLight', DSColors.surfaceLight),
                _ColorEntry(
                  'surfaceVariantLight',
                  DSColors.surfaceVariantLight,
                ),
                _ColorEntry('backgroundDark', DSColors.backgroundDark),
                _ColorEntry('surfaceDark', DSColors.surfaceDark),
                _ColorEntry('surfaceVariantDark', DSColors.surfaceVariantDark),
                _ColorEntry('outline', DSColors.outline),
                _ColorEntry('divider', DSColors.divider),
                _ColorEntry('outlineVariant', DSColors.outlineVariant),
              ],
            ),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Spacing',
        useCases: [
          WidgetbookUseCase(
            name: 'Scale',
            builder: (context) => const _SpacingScale(),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Radii',
        useCases: [
          WidgetbookUseCase(
            name: 'Scale',
            builder: (context) => const _RadiiScale(),
          ),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// Helper widgets for the token catalog
// ---------------------------------------------------------------------------

class _ColorEntry {
  const _ColorEntry(this.name, this.color);
  final String name;
  final Color color;
}

class _ColorPalette extends StatelessWidget {
  const _ColorPalette({required this.title, required this.colors});

  final String title;
  final List<_ColorEntry> colors;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(DSSpacing.md),
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: DSSpacing.md),
        Wrap(
          spacing: DSSpacing.sm,
          runSpacing: DSSpacing.sm,
          children: colors.map((e) => _ColorSwatch(entry: e)).toList(),
        ),
      ],
    );
  }
}

class _ColorSwatch extends StatelessWidget {
  const _ColorSwatch({required this.entry});
  final _ColorEntry entry;

  @override
  Widget build(BuildContext context) {
    final hex =
        '#${entry.color.toARGB32().toRadixString(16).substring(2).toUpperCase()}';
    final isLight = entry.color.computeLuminance() > 0.5;

    return SizedBox(
      width: 110,
      child: Column(
        children: [
          Container(
            width: 110,
            height: 70,
            decoration: BoxDecoration(
              color: entry.color,
              borderRadius: BorderRadius.circular(DSRadii.medium),
              border: Border.all(color: Colors.black12),
            ),
            alignment: Alignment.center,
            child: Text(
              hex,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: isLight ? Colors.black87 : Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            entry.name,
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _SpacingScale extends StatelessWidget {
  const _SpacingScale();

  @override
  Widget build(BuildContext context) {
    const entries = [
      ('xs', DSSpacing.xs),
      ('sm', DSSpacing.sm),
      ('md', DSSpacing.md),
      ('lg', DSSpacing.lg),
      ('xl', DSSpacing.xl),
      ('xxl', DSSpacing.xxl),
    ];

    return ListView(
      padding: const EdgeInsets.all(DSSpacing.md),
      children: [
        Text('Spacing Scale', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: DSSpacing.md),
        for (final (name, value) in entries)
          Padding(
            padding: const EdgeInsets.only(bottom: DSSpacing.sm),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Text(
                    '$name (${value.toInt()})',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                const SizedBox(width: DSSpacing.sm),
                Container(
                  width: value * 4,
                  height: 24,
                  decoration: BoxDecoration(
                    color: DSColors.primary.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(DSRadii.small),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _RadiiScale extends StatelessWidget {
  const _RadiiScale();

  @override
  Widget build(BuildContext context) {
    const entries = [
      ('none', DSRadii.none),
      ('small', DSRadii.small),
      ('medium', DSRadii.medium),
      ('large', DSRadii.large),
      ('extraLarge', DSRadii.extraLarge),
      ('circular', DSRadii.circular),
    ];

    return ListView(
      padding: const EdgeInsets.all(DSSpacing.md),
      children: [
        Text('Radii Scale', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: DSSpacing.md),
        Wrap(
          spacing: DSSpacing.md,
          runSpacing: DSSpacing.md,
          children: [
            for (final (name, value) in entries)
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: DSColors.primary.withValues(alpha: 0.15),
                      border: Border.all(color: DSColors.primary),
                      borderRadius: BorderRadius.circular(value),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${value.toInt()}',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(name, style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
