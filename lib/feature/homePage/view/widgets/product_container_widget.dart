import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductContainerWidget extends StatelessWidget {
  const ProductContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),

      itemCount: 8,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 9 / 13,
        // childAspectRatio: 260 / 409,
      ),
      padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.push('/productDetailsPage', extra: index);
          },
          child: Container(
            // height: 950,
            color: Colors.white,
            child: Column(
              children: [
                Hero(
                  tag: '/productImage_$index',
                  child: Image(image: AssetImage('assets/images/product.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nesto"),
                          Row(children: [Text("MIDNIGHT SALE")]),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFF2CC457),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(36),
                            bottomLeft: Radius.circular(36),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '+12 Pages',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
