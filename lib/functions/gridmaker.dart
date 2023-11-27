import 'package:flutter/material.dart';
import 'cardvertical.dart';

class GridMaker extends StatelessWidget {
  final List gridItems;

  GridMaker({required this.gridItems});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return SingleChildScrollView(
      child: Column(
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
      ),
=======
    return Column(
      children: [
        GridView.builder(
          physics: ScrollPhysics(),
          itemCount: gridItems.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 4,
            mainAxisExtent: 250,
          ),
          itemBuilder: (_, index) => cardVertical(
            gridItems: gridItems[index],
          ),
        )
      ],
>>>>>>> Stashed changes
    );
  }
}

class GridItems {
  String imageUrl;
  String gridName;
  String summary;
  String location;

<<<<<<< Updated upstream
  GridItems({required this.imageUrl, required this.gridItemsName});
}
=======
  GridItems({
    required this.imageUrl,
    required this.gridName,
    required this.summary,
    required this.location,
  });

  String get _imageUrl => imageUrl;
  String get _gridName => gridName;
  String get _summary => summary;
  String get _location => location;
}
>>>>>>> Stashed changes
