import 'package:flutter/material.dart';
//import package of screens
import 'screens/home.dart';
import 'screens/assetImage.dart';
import 'screens/networkImage.dart';
import 'screens/formField.dart';
//import 'testForm/formdynam.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/formField',
    routes: {
        '/home' :(context) => const home(),
        '/assetsImage' :(context) => const assestsImage(),
        '/networkImage':(context) => const networkImage(),
        '/formField':(context) => const formField(),
         // '/dynamicForm01':(context) =>  formdynamic01(),
    },
));
