import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() {
  runApp(MaterialApp(
    home: Grid_staggered(),
  ));
}

class Grid_staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: StaggeredGrid.extent(
        maxCrossAxisExtent: 200,children: [
          StaggeredGridTile.count(crossAxisCellCount: 1,
              mainAxisCellCount: 1, child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
                      )),
        StaggeredGridTile.count(crossAxisCellCount: 2,
            mainAxisCellCount: 1, child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
            ))
      ],)

       // children: [
      //     StaggeredGridTile.extent(
      //         crossAxisCellCount: 1,
      //         mainAxisExtent: 80,
      //         child:Container(
      //                decoration: const BoxDecoration(
      //                    image: DecorationImage(
      //                        image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //              )),
      //     StaggeredGridTile.extent(
      //         crossAxisCellCount: 2,
      //         mainAxisExtent: 300,
      //         child:Container(
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //         )),
      //     StaggeredGridTile.extent(
      //         crossAxisCellCount: 2,
      //         mainAxisExtent: 100,
      //         child:Container(
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //         ))
      //   ],
      // ),

      //       StaggeredGrid.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 3,
      //   mainAxisSpacing: 3,
      //   children: [
      //       StaggeredGridTile.count(
      //           crossAxisCellCount: 1,
      //           mainAxisCellCount: 2,
      //           child: Container(
      //             decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //           )),
      //       StaggeredGridTile.count(
      //           crossAxisCellCount: 2,
      //           mainAxisCellCount: 2,
      //           child: Container(
      //             decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //           )),
      //     StaggeredGridTile.count(
      //         crossAxisCellCount: 1,
      //         mainAxisCellCount: 3,
      //         child: Container(
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //         )),
      //     StaggeredGridTile.count(
      //         crossAxisCellCount: 1,
      //         mainAxisCellCount: 2,
      //         child: Container(
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //         )),
      //     StaggeredGridTile.count(
      //         crossAxisCellCount: 1,
      //         mainAxisCellCount: 1,
      //         child: Container(
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //         )),
      //     StaggeredGridTile.count(
      //         crossAxisCellCount: 1,
      //         mainAxisCellCount: 1,
      //         child: Container(
      //           decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/pic5.jpg"),fit: BoxFit.fill)),
      //         ))
      //   ],
      // ),
    ));
  }
}
