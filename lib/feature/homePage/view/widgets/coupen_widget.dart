
import 'package:flutter/material.dart';

class CoupenWidget extends StatelessWidget {
  const CoupenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2CC457),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 3.2 / 4,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/icons/coupen.jpg')),
                Text("NAMSHI"),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xFF2CC457),
                        borderRadius: BorderRadius.all(Radius.circular(36)),
                      ),
                      child: Text(
                        '70% OFF  ',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Text(
                      " +  Upto 20% OFF",
                      style: TextStyle(fontSize: 12, color: Color(0xFF2CC457)),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(36)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ADM3456 ', style: TextStyle(color: Colors.white)),
                      Icon(Icons.copy_all, color: Colors.white, size: 15),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 8,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
