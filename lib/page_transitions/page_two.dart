

import 'package:flutter/material.dart';
 class PageTwo extends StatelessWidget {
   const PageTwo({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("page two"),
       ),
       body: Center(
         child: ElevatedButton(
           onPressed: (){
             Navigator.pop(context);
           },
           child: const Text("go back"),
         ),
       ),
     );
   }
 }
