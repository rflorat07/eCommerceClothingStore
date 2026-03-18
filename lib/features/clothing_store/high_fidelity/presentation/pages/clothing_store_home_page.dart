import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ClothingStoreHomePage extends StatelessWidget {
  const ClothingStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomerInfo(),
          CustomSearchBar(),
          CategoryList(),
          PinterestGrid(),
        ],
      ),
    );
  }
}
