import 'package:flutter/material.dart';
import 'package:shopping/pages/product_page.dart';

final class ProductCardViewModel {
  final String title;
  final String brand;
  final String image;
  final double value;
  final String description;

  ProductCardViewModel({
    required this.image,
    required this.title,
    required this.value,
    required this.brand,
    required this.description,
  });
}

class ProductCard extends StatelessWidget {
  final ProductCardViewModel viewModel;

  const ProductCard({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    title: viewModel.title,
                    description: viewModel.description,
                    brand: viewModel.brand,
                    value: viewModel.value,
                    image: viewModel.image,
                  ),
                ),
              );
            },
            child: Hero(
              tag: viewModel.image,
              child: Image.asset(
                viewModel.image,
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: Text(
              viewModel.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            viewModel.brand,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "\$ ${viewModel.value}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
