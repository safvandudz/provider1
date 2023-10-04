import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workexp1/New.dart';
import 'package:workexp1/Provider/Providerfn.dart';

void main() {
  runApp(Tabbar());
}

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Providerfn(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: New(),
      ),
    );
  }
}


