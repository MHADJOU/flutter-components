import 'package:flutter/material.dart';


class formdynamic01 extends StatefulWidget {
  const formdynamic01({ Key? key }) : super(key: key);

  @override
  State<formdynamic01> createState() => _formdynamic01State();
}

class _formdynamic01State extends State<formdynamic01> {

  //
  int _counter = 0;
  @override

  void initState(){
    //WidgetsBinding.instance.addObserver(this);
    super.initState();
      _counter = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic form'),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            setState(() {
              _counter++;
            });
          },),
          IconButton(icon: Icon(Icons.refresh), onPressed: (){
            setState((){
              _counter  = 0;
            });
          },)
        ],
      ),

      //start  body
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _counter,
                itemBuilder: (context, index){
                  return _row(index);
                } 
                )
              )
          ],
        ),
      ),
    );
  }

  _row(int index){
    return Row(
      children: [
        Text('ID: $index'),
        SizedBox(width: 30.0,),
        Expanded(child: TextFormField()),
      ],
    );
  }
}