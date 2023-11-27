import 'package:flutter/material.dart';
import 'cardvertical.dart';

class MyGridView extends StatelessWidget {
  final List<GridItems> items;

  MyGridView({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          physics: ScrollPhysics(),
          itemCount: items.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 4,
            mainAxisExtent: 250,
          ),
          itemBuilder: (_, index) =>
              cardVertical(items[index].imageUrl, items[index].gridItemsName),
        )
      ],
    );
  }
}

class GridItems {
  String imageUrl;
  String gridItemsName;

  GridItems({required this.imageUrl, required this.gridItemsName});
}
