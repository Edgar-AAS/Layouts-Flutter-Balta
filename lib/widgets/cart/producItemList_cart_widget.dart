import 'package:flutter/material.dart';
import 'package:shopping/widgets/cart/productItem_cart_widget.dart';

class ProductItemList extends StatelessWidget {
  ProductItemList({super.key});

  final _productCardList = [
    const ProductItemCart(
      image: "assets/product-1.png",
      value: 755,
      title: "Beoplay Speaker",
    ),
    const ProductItemCart(
      image: "assets/product-2.png",
      value: 450,
      title: "Leather Wristwatch",
    ),
    const ProductItemCart(
      image: "assets/product-3.png",
      value: 900,
      title: "Smart Bluetooth Speaker",
    ),
    const ProductItemCart(
      image: "assets/product-4.png",
      value: 1000,
      title: "Smart Lugagge",
    ),
    const ProductItemCart(
      image: "assets/product-7.png",
      value: 300,
      title: "Airpods",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: _productCardList,
      ),
    );
  }
}
