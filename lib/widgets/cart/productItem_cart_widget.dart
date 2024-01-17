import 'package:flutter/material.dart';

class ProductItemCart extends StatelessWidget {
  final String image;
  final String title;
  final double value;

  const ProductItemCart({
    super.key,
    required this.image,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  "\$ $value",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Theme.of(context).indicatorColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Theme.of(context).indicatorColor,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Theme.of(context).indicatorColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
