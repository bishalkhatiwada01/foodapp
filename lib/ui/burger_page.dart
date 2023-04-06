import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/ui/home_page.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (Context)=>HomePage()));
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}

