import 'package:flutter/material.dart';

import '../widget/home_appbar.dart';
import '../widget/products_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List productList = [
      {
        "image":
            "https://i.ibb.co/JscjRb5/gray-blazer-front-view-casual-men-s-wear-removebg-preview.png",
      },
      {
        "image": "https://i.ibb.co/2krPT8D/pink-jacket-removebg-preview.png",
      },
      {
        "image":
            "https://i.ibb.co/JscjRb5/gray-blazer-front-view-casual-men-s-wear-removebg-preview.png",
      },
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const HomeAppBar(),
              ProductsView(productList: productList),
            ],
          ),
        ),
      ),
    );
  }
}
