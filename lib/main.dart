import 'package:flutter/material.dart';
import 'package:wddqawdqd/screens/home.dart';
import 'package:wddqawdqd/screens/info.dart';
import 'package:wddqawdqd/screens/saves.dart';
import 'package:wddqawdqd/screens/settings.dart';


class AllRoutes {
   static const String home = '/';
  static const String saves = '/saves';
  static const String info = '/info';
  static const String settings = '/settings';


}



// AppData\Local\Android\Sdk\platform-tools
// adb connect 192.168.0.108
void main() {
  runApp(
     MaterialApp(  
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      routes: {
        AllRoutes.home:(context) => const Home(),
        AllRoutes.saves:(context) => const Saves(),
        AllRoutes.info:(context) => const Info(),
        AllRoutes.settings:(context) => const Settings(),
      },

      initialRoute: '/', // Маршрут, с которого будет ЗАПУСК ПРИЛОЖЕНИЯ!!!
      
      // home:  const Home(),
      ),
  );
}

