import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../providers/providers.dart';

class CustomerInfo extends ConsumerWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    // Obtiene el perfil del usuario (User) desde el provider tipado
    final profile = ref.watch(profileProvider);

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
        child: Row(
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
                  profile.name,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            CircularImage(
              width: 32.0,
              height: 32.0,
              backgroundColor: Colors.white,
              image: profile.profilePicture,
            ),
          ],
        ),
      ),
    );
  }
}
