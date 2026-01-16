import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/clothing_store_providers.dart';
import '../widgets/widgets.dart';

class ClothingStoreCheckoutPage extends ConsumerWidget {
  const ClothingStoreCheckoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productsProvider);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: _buildBottomNavigationBar(textTheme),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              2,
              (index) => const Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Placeholder(), //CheckoutItem(product: product[index]),
              ),
            ),

            const ShippingInformation(),
          ],
        ),
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

// class IconsaxPlusLinear {} // Remove this if not needed
