import 'package:draggable_grid/screens/draggable_grid.dart';
import 'package:flutter/material.dart';

final List<Widget> items = [
  Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Maths',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
      ),
      ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                size: 8,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    ],
  ),
];

class GridGalleryExample extends StatefulWidget {
  const GridGalleryExample({Key? key}) : super(key: key);

  @override
  State<GridGalleryExample> createState() => _GridGalleryExampleState();
}

class _GridGalleryExampleState extends State<GridGalleryExample> {
  final List<Widget> galleries = List.generate(
    10,
    (index) => items[0],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Gallery Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: GridGallery(
            galleries: galleries,
            crossAxisCount: MediaQuery.of(context).size.width < 600 ? 1 : 3,
          ),
        ),
      ),
    );
  }
}
