

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/screen/favourite_screen.dart';
import 'package:favorite_button/favorite_button.dart';
import '../screen/favourite_screen.dart';
import '../screen/yourproduct_screen.dart';
import '../provider/product.dart';
import '../screen/product_screen.dart';
 
class productitem  extends StatelessWidget {
   final String title;
   final String id;
   final String imageUrl;
   final String price;
   final String description;
   final Status? status; 
   //final Function onchange;
 const productitem(this.title,this.id,this.imageUrl,this.price,this.description,this.status,{Key? key});









 
// void selectproduct(BuildContext ctx){
 // IconButton(icon: Icon(Icons.star),onPressed:(){ 
          
          //Navigator.of(ctx).push(
           // MaterialPageRoute(builder: (c)=>favouriteScreen(),
         // ),
         // );
        //});
       

 //}
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      

    //onTap:()=>selectproduct(context) ,
      
      child: Stack(
        children: [
          Image.network(imageUrl,height: 250,
          fit: BoxFit.cover,
          
          ),
          Container(
            child:FavoriteButton(
            valueChanged: (_isFavorite) {
             Provider.of<products>(context,listen: false).changeStatus(id, Status.favourite);
            },
             ),
             
          
             
              //IconButton(icon: Icon(Icons.favorite),onPressed:(){ 
          
          //Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
          //return favouriteScreen();
          //}));

        //)
            
    
           // child:Text(title, 
           // style: TextStyle(
             //backgroundColor:Colors.black.withOpacity(0.6),
             //fontSize: 30,
             //
             //color: Colors.white),)
             
            
          )
          
        ],
    
      ),
    );
      
  }
}