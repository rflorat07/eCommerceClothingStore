import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ClothingStorePage extends StatelessWidget {
  const ClothingStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 24.0),
          child: Column(
            spacing: 16.0,
            children: [
              CustomerInfo(),
              CustomSearchBar(),
              CategoryList(),
              PinterestGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
