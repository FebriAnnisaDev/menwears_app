import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Product Details",
          style: TextStyle(
            color: Colors.blueGrey[900],
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.blueGrey[900],
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15.0),
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "IDR 125.000",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueGrey[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.orange[800],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 20.0,
                  left: 20.0,
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductImage(),
                const SizedBox(
                  height: 15.0,
                ),
                const ProductRatingReviewSold(),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Jack Frostee Printed Shirt",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "IDR 125.000",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 15,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.brown,
                                radius: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                ),
                              ),
                              const SizedBox(
                                width: 80.0,
                              ),
                              Text(
                                "size guide",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.orange.shade700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.orange.shade800,
                                child: const Center(
                                  child: Text(
                                    "S",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              const CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                        // color: Colors.white,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              const CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    "L",
                                    style: TextStyle(
                                        // color: Colors.white,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              const CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    "XL",
                                    style: TextStyle(
                                        // color: Colors.white,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Product Description",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales posuere diam nec consequat. Integer sed lorem purus. Donec dui turpis, eleifend sed eros at, imperdiet eleifend dui.",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductRatingReviewSold extends StatelessWidget {
  const ProductRatingReviewSold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10.0,
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
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.grey[100],
      child: Image.network(
        "https://i.ibb.co/JscjRb5/gray-blazer-front-view-casual-men-s-wear-removebg-preview.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
