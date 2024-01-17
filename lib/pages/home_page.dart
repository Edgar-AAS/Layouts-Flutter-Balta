import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/categoryList_widget.dart';
import 'package:shopping/widgets/product/productList_widget.dart';
import 'package:shopping/widgets/searchBox/searchBox_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SearchBox(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Categories",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              const CategoryList(),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              const ProductList(
                scrollDirection: Axis.horizontal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
