import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menwears_app/product_detail/view/product_detail_view.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.productList,
  });

  final List productList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(() => const ProductDetailView());
            },
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                        productList[index]["image"],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                          size: 12,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "9 Reviews",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Sold 30",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Jack Frostee Printed Shirt",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "IDR 125.000",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
