import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{

  const AppBarWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return AppBar(
        leading: IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
          
        }, icon: const Icon(Icons.menu),),

        
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.bell),
          )
        ],
      );
  }
  
  @override
 
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  
}