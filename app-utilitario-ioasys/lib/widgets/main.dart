import 'package:app_utilitario_ioasys/pages/calculadora_page.dart';
import 'package:app_utilitario_ioasys/pages/conversor_page.dart';
import 'package:app_utilitario_ioasys/pages/login_page.dart';
import 'package:app_utilitario_ioasys/pages/tarefas_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffC1007E),
        accentColor: Colors.black,
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
        )),
      ),
      initialRoute: LoginPage.routeName,
      routes: {
        ImcCalculator.routeName: (context) => ImcCalculator(),
        LoginPage.routeName: (context) => LoginPage(),
        Tarefas.routeName: (context) => Tarefas(),
        Conversor.routeName: (context) => Conversor(),
      },
    );
  }
}
