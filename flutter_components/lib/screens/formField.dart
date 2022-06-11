//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
//import 'package:flutter_form_builder/flutter_form_builder.dart';
//import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';

class formField extends StatefulWidget {
  const formField({ Key? key }) : super(key: key);

  @override
  State<formField> createState() => _formFieldState();
}

class _formFieldState extends State<formField> {

  final _formKey = GlobalKey<FormBuilderState>();
   bool _ageHasError = false;
  //int _continents;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(
                children : [
                  SizedBox(height: 20.0,),
                   Column(
                       children: [
                         SizedBox(height: 5.0,),
                         SizedBox(
                           width: 300.0,
                           child: Container(
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Colors.green,
                                 width: 3.0
                               )
                             ),
                             child: FormBuilderTextField(
                  name: 'age',
                  decoration: const InputDecoration(
                              /*suffixIcon: _ageHasError
                                      ? const Icon(Icons.error, color: Colors.red)
                                      : const Icon(Icons.check, color: Colors.green),
                                      */
                                ),
                                onChanged: (val) {
                                  setState(() {
                                    _ageHasError = !(_formKey.currentState?.fields['age']
                                            ?.validate() ??
                                        false);
                                  });
                                },
                  ),
                
                           ),
                         ),
                       ],
                     ),
                   
                ]
               ,
               
                  )
              )
          ],

        ),
      )
    );
  }
}