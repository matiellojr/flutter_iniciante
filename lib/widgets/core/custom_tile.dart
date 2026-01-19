import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Color color;
  final Widget leading;
  final Widget title;
  final Widget subTitle;
  final Widget trailing;
  final void Function() onClick; // função de clique (OnTap)
  const CustomTile({
      super.key, 
      required this.color, 
      required this.leading,
      required this.title, 
      required this.subTitle, 
      required this.trailing,
      required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    final gap = SizedBox(height: 8, width: 16);
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            Row(
              // *******************************************
              // ************* coluna do id ****************
              // *******************************************
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading, // id
                gap,
                // *******************************************
                // ************ coluna do nome e peso ********
                // *******************************************
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    gap,
                    subTitle,
                  ],
                ),
              ],
            ),
            // *******************************************
            // ************ coluna da altura *************
            // *******************************************
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  trailing,
                ],
            ),          
          ],
        ),
      ),
    );
  }
}