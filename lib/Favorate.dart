import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/Providerfn.dart';

class Favorate extends StatelessWidget {
  const Favorate({super.key});

  @override
  Widget build(BuildContext context) {
    final p=Provider.of<Providerfn>(context);
    final mytextfn=p.textfn;
    return Scaffold(appBar: AppBar(toolbarHeight: 60,title: Text('Startup Name Generator')),
body: Column(children: [
  Expanded(
    child: ListView.builder(
      itemCount: mytextfn.length,
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
                                child: Text(mytextfn[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                            ],),
                        ],
                      ),

                    ))
                  ]),),
              ),
              IconButton(onPressed:() {
                p.toggleFavorate(mytextfn[index]);
              },icon: p.symbol(mytextfn[index])?
              const Icon(Icons.favorite,color: Colors.red):
              Icon(Icons.favorite_border_outlined)
              ),
            ]),
          ),
        );
      },
    ),
  ),
]),


    );
  }
}
