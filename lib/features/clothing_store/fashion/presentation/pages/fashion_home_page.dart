import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class FashionHomePage extends StatelessWidget {
  const FashionHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 16.0,
            children: [
              FashionLocation(),
              FashionSearchBar(),
              FashionNewCollection(),
            ],
          ),
        ),
      ),
    );
  }
}
