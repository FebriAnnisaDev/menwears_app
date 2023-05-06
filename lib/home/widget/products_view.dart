import 'package:flutter/material.dart';
import 'package:menwears_app/home/widget/products_list.dart';
import 'package:menwears_app/home/widget/view_collections_banner.dart';

import 'categories_chips.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({
    super.key,
    required this.productList,
  });

  final List productList;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const ViewCollectionBanner(),
                const SizedBox(
                  height: 5.0,
                ),
                const CategoriesChips(),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    const Text(
                      "New Drops",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.orange[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ProductList(productList: productList),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
