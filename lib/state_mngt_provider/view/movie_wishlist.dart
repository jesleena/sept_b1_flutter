import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movie_provider.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistt = context.watch<MovieProvider>().wishlist;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: ListView.builder(
          itemCount: wishlistt.length,
          itemBuilder: (context, index) {
            //final current_movie=moviess[index];
            return Card(
              color: Colors.pink[100],
              child: ListTile(
                title: Text(wishlistt[index].title),
                subtitle: Text(wishlistt[index].time),
                trailing: IconButton(
                    onPressed: () {
                            context
                            .read<MovieProvider>()
                            .remove_wishlist(wishlistt[index]);
                      },

                    icon: const Icon(
                      Icons.delete_outline,
                    )),
              ),
            );
          }),
    );
  }
}
