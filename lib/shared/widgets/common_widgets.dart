import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

/// Custom loading widget
class CustomLoadingWidget extends StatelessWidget {
  /// Loading message
  final String? message;

  /// Size of the loading indicator
  final double size;

  /// Creates a new [CustomLoadingWidget] instance
  const CustomLoadingWidget({super.key, this.message, this.size = 24.0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size,
            height: size,
            child: const CircularProgressIndicator(),
          ),
          if (message != null) ...[
            const SizedBox(height: AppConstants.defaultPadding),
            Text(
              message!,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}

/// Custom error widget
class CustomErrorWidget extends StatelessWidget {
  /// Error message
  final String message;

  /// Retry callback
  final VoidCallback? onRetry;

  /// Icon to display
  final IconData icon;

  /// Creates a new [CustomErrorWidget] instance
  const CustomErrorWidget({
    super.key,
    required this.message,
    this.onRetry,
    this.icon = Icons.error_outline,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: AppConstants.defaultPadding),
            Text(
              'Something went wrong',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.smallPadding),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: AppConstants.defaultPadding),
              ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
            ],
          ],
        ),
      ),
    );
  }
}

/// Custom empty state widget
class CustomEmptyWidget extends StatelessWidget {
  /// Title message
  final String title;

  /// Subtitle message
  final String? subtitle;

  /// Icon to display
  final IconData icon;

  /// Action button
  final Widget? action;

  /// Creates a new [CustomEmptyWidget] instance
  const CustomEmptyWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.icon = Icons.inbox_outlined,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 64,
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppConstants.defaultPadding),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            if (subtitle != null) ...[
              const SizedBox(height: AppConstants.smallPadding),
              Text(
                subtitle!,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
            if (action != null) ...[
              const SizedBox(height: AppConstants.defaultPadding),
              action!,
            ],
          ],
        ),
      ),
    );
  }
}

class CustomErrorSnackBar extends StatelessWidget {
  const CustomErrorSnackBar({
    super.key,
    required this.message,
    this.widget = const CircularProgressIndicator(),
  });

  final String message;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    // Trigger SnackBar on build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 5),
          behavior: SnackBarBehavior.floating,
        ),
      );
    });

    // Return skeleton while showing SnackBar
    return widget;
  }
}
