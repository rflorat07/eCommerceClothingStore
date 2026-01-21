import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../providers/clothing_store_providers.dart';
import '../widgets/widgets.dart';

class ClothingStoreCheckoutPage extends StatelessWidget {
  const ClothingStoreCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: _buildBottomNavigationBar(textTheme),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: _ClothingStoreCheckoutContent(),
      ),
    );
  }

  SafeArea _buildBottomNavigationBar(
    TextTheme textTheme,
  ) {
    return SafeArea(
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        child: FilledButton(
          onPressed: () {},
          child: Text(
            'Pay',
            style: textTheme.labelLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class _ClothingStoreCheckoutContent extends ConsumerWidget {
  const _ClothingStoreCheckoutContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsProvider);

    return switch (asyncProducts) {
      AsyncData(:final value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            asyncProducts.value.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: CheckoutItem(product: value[index]),
            ),
          ),

          //const ShippingInformation(),
        ],
      ),
      AsyncError() => const CustomErrorSnackBar(
        message: 'We couldn\'t load your profile. Please try again.',
        widget: CustomerInfoSkeleton(),
      ),
      _ => const CircularProgressIndicator(),
    };
  }
}
