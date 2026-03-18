import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// Builds the **Theme** folder in the Widgetbook navigation tree.
WidgetbookFolder themeCatalog() {
  return WidgetbookFolder(
    name: 'Theme',
    children: [
      // ── Typography ───────────────────────────────────────
      WidgetbookComponent(
        name: 'Typography',
        useCases: [
          WidgetbookUseCase(
            name: 'Text Theme',
            builder: (context) => const _TypographyShowcase(),
          ),
          WidgetbookUseCase(
            name: 'Custom Styles',
            builder: (context) => const _CustomTypographyShowcase(),
          ),
          WidgetbookUseCase(
            name: 'Font Weights',
            builder: (context) => const _FontWeightsShowcase(),
          ),
        ],
      ),

      // ── Color Scheme ─────────────────────────────────────
      WidgetbookComponent(
        name: 'ColorScheme',
        useCases: [
          WidgetbookUseCase(
            name: 'Overview',
            builder: (context) => const _ColorSchemeShowcase(),
          ),
        ],
      ),

      // ── Component Themes ─────────────────────────────────
      WidgetbookComponent(
        name: 'Component Themes',
        useCases: [
          WidgetbookUseCase(
            name: 'Buttons',
            builder: (context) => const _ButtonsShowcase(),
          ),
          WidgetbookUseCase(
            name: 'Cards',
            builder: (context) => const _CardsShowcase(),
          ),
          WidgetbookUseCase(
            name: 'Inputs',
            builder: (context) => const _InputsShowcase(),
          ),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// Typography
// ---------------------------------------------------------------------------

class _TypographyShowcase extends StatelessWidget {
  const _TypographyShowcase();

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final styles = <(String, TextStyle?)>[
      ('displayLarge', tt.displayLarge),
      ('displayMedium', tt.displayMedium),
      ('displaySmall', tt.displaySmall),
      ('headlineLarge', tt.headlineLarge),
      ('headlineMedium', tt.headlineMedium),
      ('headlineSmall', tt.headlineSmall),
      ('titleLarge', tt.titleLarge),
      ('titleMedium', tt.titleMedium),
      ('titleSmall', tt.titleSmall),
      ('labelLarge', tt.labelLarge),
      ('labelMedium', tt.labelMedium),
      ('labelSmall', tt.labelSmall),
      ('bodyLarge', tt.bodyLarge),
      ('bodyMedium', tt.bodyMedium),
      ('bodySmall', tt.bodySmall),
    ];

    return ListView.separated(
      padding: const EdgeInsets.all(DSSpacing.md),
      itemCount: styles.length,
      separatorBuilder: (context, i) => const Divider(height: DSSpacing.lg),
      itemBuilder: (_, i) {
        final (name, style) = styles[i];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: style),
            const SizedBox(height: 4),
            Text(
              'Size ${style?.fontSize} · Weight ${style?.fontWeight} · Height ${style?.height}',
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: DSColors.neutral40),
            ),
          ],
        );
      },
    );
  }
}

class _CustomTypographyShowcase extends StatelessWidget {
  const _CustomTypographyShowcase();

  @override
  Widget build(BuildContext context) {
    final styles = <(String, TextStyle)>[
      ('cardTitle', DSTypography.cardTitle),
      ('cardSubtitle', DSTypography.cardSubtitle),
      ('buttonText', DSTypography.buttonText),
      ('chipText', DSTypography.chipText),
      ('navigationText', DSTypography.navigationText),
    ];

    return ListView(
      padding: const EdgeInsets.all(DSSpacing.md),
      children: [
        Text(
          'Custom Text Styles',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: DSSpacing.md),
        for (final (name, style) in styles) ...[
          Text(name, style: style),
          const SizedBox(height: 2),
          Text(
            'Size ${style.fontSize} · Weight ${style.fontWeight} · Height ${style.height}',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(color: DSColors.neutral40),
          ),
          const Divider(height: DSSpacing.lg),
        ],
      ],
    );
  }
}

class _FontWeightsShowcase extends StatelessWidget {
  const _FontWeightsShowcase();

  @override
  Widget build(BuildContext context) {
    const weights = <(String, FontWeight)>[
      ('thin (w100)', DSTypography.thin),
      ('extraLight (w200)', DSTypography.extraLight),
      ('light (w300)', DSTypography.light),
      ('regular (w400)', DSTypography.regular),
      ('medium (w500)', DSTypography.medium),
      ('semiBold (w600)', DSTypography.semiBold),
      ('bold (w700)', DSTypography.bold),
      ('extraBold (w800)', DSTypography.extraBold),
      ('black (w900)', DSTypography.black),
    ];

    return ListView(
      padding: const EdgeInsets.all(DSSpacing.md),
      children: [
        Text(
          'Font Weights — Encode Sans',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: DSSpacing.md),
        for (final (name, weight) in weights)
          Padding(
            padding: const EdgeInsets.only(bottom: DSSpacing.sm),
            child: Text(
              'The quick brown fox ($name)',
              style: TextStyle(fontSize: 16, fontWeight: weight),
            ),
          ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Color Scheme
// ---------------------------------------------------------------------------

class _ColorSchemeShowcase extends StatelessWidget {
  const _ColorSchemeShowcase();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final entries = <(String, Color, Color)>[
      ('primary', cs.primary, cs.onPrimary),
      ('primaryContainer', cs.primaryContainer, cs.onPrimaryContainer),
      ('secondary', cs.secondary, cs.onSecondary),
      ('secondaryContainer', cs.secondaryContainer, cs.onSecondaryContainer),
      ('tertiary', cs.tertiary, cs.onTertiary),
      ('tertiaryContainer', cs.tertiaryContainer, cs.onTertiaryContainer),
      ('error', cs.error, cs.onError),
      ('errorContainer', cs.errorContainer, cs.onErrorContainer),
      ('surface', cs.surface, cs.onSurface),
      ('inverseSurface', cs.inverseSurface, cs.onInverseSurface),
    ];

    return ListView(
      padding: const EdgeInsets.all(DSSpacing.md),
      children: [
        Text(
          'Active ColorScheme',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: DSSpacing.md),
        for (final (name, bg, fg) in entries)
          Container(
            margin: const EdgeInsets.only(bottom: DSSpacing.sm),
            padding: const EdgeInsets.symmetric(
              horizontal: DSSpacing.md,
              vertical: DSSpacing.sm + 4,
            ),
            decoration: BoxDecoration(
              color: bg,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(DSRadii.medium),
            ),
            child: Text(
              name,
              style: TextStyle(color: fg, fontWeight: FontWeight.w600),
            ),
          ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Component Themes
// ---------------------------------------------------------------------------

class _ButtonsShowcase extends StatelessWidget {
  const _ButtonsShowcase();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(DSSpacing.md),
        child: Wrap(
          spacing: DSSpacing.md,
          runSpacing: DSSpacing.md,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            TextButton(onPressed: () {}, child: const Text('Text')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
          ],
        ),
      ),
    );
  }
}

class _CardsShowcase extends StatelessWidget {
  const _CardsShowcase();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(DSSpacing.md),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(DSSpacing.md),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card Title',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: DSSpacing.sm),
                Text(
                  'This card uses the theme\'s CardTheme with elevation 2 and a 12dp border radius.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: DSSpacing.md),
                ElevatedButton(onPressed: () {}, child: const Text('Action')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InputsShowcase extends StatelessWidget {
  const _InputsShowcase();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(DSSpacing.md),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Default Input',
              hintText: 'Type something...',
            ),
          ),
          const SizedBox(height: DSSpacing.md),
          TextField(
            decoration: InputDecoration(
              labelText: 'With Prefix',
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DSRadii.medium),
              ),
            ),
          ),
          const SizedBox(height: DSSpacing.md),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Error State',
              errorText: 'Field is required',
            ),
          ),
          const SizedBox(height: DSSpacing.md),
          const TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: 'Disabled',
              hintText: 'Cannot edit',
            ),
          ),
        ],
      ),
    );
  }
}
