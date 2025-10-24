import 'package:flutter/material.dart';

import '../theme/app_typography.dart';

/// Demo page to showcase Encode Sans typography
class TypographyDemoPage extends StatelessWidget {
  /// Creates a new [TypographyDemoPage] instance
  const TypographyDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Encode Sans Typography',
          style: AppTypography.lightTextTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Encode Sans',
                    style: AppTypography.lightTextTheme.displayLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'A versatile, modern sans-serif typeface',
                    style: AppTypography.lightTextTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Display Styles
            _buildSection(context, 'Display Styles', [
              _buildTextSample(
                'Display Large',
                AppTypography.lightTextTheme.displayLarge,
              ),
              _buildTextSample(
                'Display Medium',
                AppTypography.lightTextTheme.displayMedium,
              ),
              _buildTextSample(
                'Display Small',
                AppTypography.lightTextTheme.displaySmall,
              ),
            ]),

            // Headline Styles
            _buildSection(context, 'Headline Styles', [
              _buildTextSample(
                'Headline Large',
                AppTypography.lightTextTheme.headlineLarge,
              ),
              _buildTextSample(
                'Headline Medium',
                AppTypography.lightTextTheme.headlineMedium,
              ),
              _buildTextSample(
                'Headline Small',
                AppTypography.lightTextTheme.headlineSmall,
              ),
            ]),

            // Title Styles
            _buildSection(context, 'Title Styles', [
              _buildTextSample(
                'Title Large',
                AppTypography.lightTextTheme.titleLarge,
              ),
              _buildTextSample(
                'Title Medium',
                AppTypography.lightTextTheme.titleMedium,
              ),
              _buildTextSample(
                'Title Small',
                AppTypography.lightTextTheme.titleSmall,
              ),
            ]),

            // Body Styles
            _buildSection(context, 'Body Styles', [
              _buildTextSample(
                'Body Large',
                AppTypography.lightTextTheme.bodyLarge,
              ),
              _buildTextSample(
                'Body Medium',
                AppTypography.lightTextTheme.bodyMedium,
              ),
              _buildTextSample(
                'Body Small',
                AppTypography.lightTextTheme.bodySmall,
              ),
            ]),

            // Label Styles
            _buildSection(context, 'Label Styles', [
              _buildTextSample(
                'Label Large',
                AppTypography.lightTextTheme.labelLarge,
              ),
              _buildTextSample(
                'Label Medium',
                AppTypography.lightTextTheme.labelMedium,
              ),
              _buildTextSample(
                'Label Small',
                AppTypography.lightTextTheme.labelSmall,
              ),
            ]),

            // Custom Styles
            _buildSection(context, 'Custom Styles', [
              _buildTextSample('Card Title', AppTypography.cardTitle),
              _buildTextSample('Card Subtitle', AppTypography.cardSubtitle),
              _buildTextSample('Button Text', AppTypography.buttonText),
              _buildTextSample('Chip Text', AppTypography.chipText),
              _buildTextSample('Navigation Text', AppTypography.navigationText),
            ]),

            // Weight Demonstration
            _buildSection(context, 'Font Weights', [
              _buildWeightSample('Thin (100)', AppTypography.thin),
              _buildWeightSample('Extra Light (200)', AppTypography.extraLight),
              _buildWeightSample('Light (300)', AppTypography.light),
              _buildWeightSample('Regular (400)', AppTypography.regular),
              _buildWeightSample('Medium (500)', AppTypography.medium),
              _buildWeightSample('Semi Bold (600)', AppTypography.semiBold),
              _buildWeightSample('Bold (700)', AppTypography.bold),
              _buildWeightSample('Extra Bold (800)', AppTypography.extraBold),
              _buildWeightSample('Black (900)', AppTypography.black),
            ]),

            // Practical Example
            const SizedBox(height: 32),
            Text(
              'Practical Example',
              style: AppTypography.lightTextTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile App Prototype',
                      style: AppTypography.cardTitle,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'A modern mobile app prototype with clean design and intuitive user experience.',
                      style: AppTypography.cardSubtitle,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Chip(
                          label: Text('Mobile', style: AppTypography.chipText),
                        ),
                        const SizedBox(width: 8),
                        Chip(
                          label: Text('UI/UX', style: AppTypography.chipText),
                        ),
                        const SizedBox(width: 8),
                        Chip(
                          label: Text(
                            'Prototype',
                            style: AppTypography.chipText,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Created: 2 days ago',
                          style: AppTypography.lightTextTheme.labelSmall,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'View Details',
                            style: AppTypography.buttonText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    List<Widget> children,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTypography.lightTextTheme.headlineMedium),
        const SizedBox(height: 16),
        ...children,
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildTextSample(String label, TextStyle? style) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTypography.lightTextTheme.labelMedium?.copyWith(
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),
          Text('The quick brown fox jumps over the lazy dog', style: style),
        ],
      ),
    );
  }

  Widget _buildWeightSample(String label, FontWeight weight) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: AppTypography.lightTextTheme.labelMedium?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Encode Sans Typography',
              style: AppTypography.lightTextTheme.bodyLarge?.copyWith(
                fontWeight: weight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
