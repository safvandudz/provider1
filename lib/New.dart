import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workexp1/Favorate.dart';
import 'package:workexp1/Provider/Providerfn.dart';

class New extends StatelessWidget {
   New({super.key});
   @override
   Widget build(BuildContext context) {

     List textfn=['MildShade','NeatRush','AidJazz','WristDawn'];
     final p=Provider.of<Providerfn>(context);
    return Scaffold(appBar: AppBar(toolbarHeight: 60,title: Text('Startup Name Generator')),
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: textfn.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,blurStyle: BlurStyle.outer,blurRadius: 5)]),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

                    Expanded(
                      child: Container(height: 100,
                        child: Row(children: [
                          Expanded(child: Container(height: double.maxFinite,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40.0,left: 10),
                                      child: Text(textfn[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    ),
                                  ],),
                              ],
                            ),

                          ))
                        ]),),
                    ),
                    IconButton(onPressed:() {
                      p.toggleFavorate(textfn[index]);
                    },icon: p.symbol(textfn[index])?
                        const Icon(Icons.favorite,color: Colors.red):
                        Icon(Icons.favorite_border_outlined)
                    ),
                  ]),
                ),
              );
            },
          ),
        ),
        Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(width: 300,height: 80,color: Colors.blue,
              child: Center(child:
              GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorate(),));
              }, child: Text('favorate',style: TextStyle(color: Colors.white,fontSize: 40),)),

              ),),
            )),
          ],
        ),

      ],
    ),);
  }
}
