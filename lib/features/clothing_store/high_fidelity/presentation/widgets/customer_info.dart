import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: _CustomerInfoContent(),
    );
  }
}

class _CustomerInfoContent extends ConsumerWidget {
  const _CustomerInfoContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProfile = ref.watch(profileProvider);

    return Container(
      padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
      child: switch (asyncProfile) {
        AsyncData(:final value) => _ProfileData(value: value),
        AsyncError() => const CustomErrorSnackBar(
          message: 'We couldn\'t load your profile. Please try again.',
          widget: CustomerInfoSkeleton(),
        ),
        _ => const CustomerInfoSkeleton(),
      },
    );
  }
}

class _ProfileData extends StatelessWidget {
  const _ProfileData({required this.value});

  final User value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 4.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Welcome 👋',
              style: textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              '${value.firstName} ${value.lastName}',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        CircularImage(
          width: 32.0,
          height: 32.0,
          image: value.image,
          isNetworkImage: true,
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}

class CustomerInfoSkeleton extends StatelessWidget {
  const CustomerInfoSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 10.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Skeleton(width: 97, height: 7),
            Skeleton(width: 115, height: 9),
          ],
        ),
        CircleSkeleton(size: 32),
      ],
    );
  }
}
