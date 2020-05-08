import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: GridTile(
        child: Image.network(imageUrl, fit: BoxFit.cover,),
        footer: GridTileBar( 
        
          backgroundColor: Colors.black87, 
          // leading: IconButton( 
          //   icon: Icon(Icons.favorite),
          //   onPressed: () {},
          // ),
          title: Text(title, textAlign: TextAlign.center),
          trailing: IconButton( 
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
    
  }
}