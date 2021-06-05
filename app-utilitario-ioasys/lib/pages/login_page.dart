import 'package:app_utilitario_ioasys/components/custom_taskTextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static final String routeName = '/LoginPage';

  //String user = '';
  //String password = '';

  LoginPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: 76,
                  ),
                  width: 159,
                  child: Image.asset('assets/images/logo_ioasys.png')),
              Container(
                margin: EdgeInsets.only(top: 129, left: 49),
                alignment: Alignment.centerLeft,
                child: Text('Seja bem-vindo!',
                    style: TextStyle(
                      fontSize: 31,
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 49),
                padding: EdgeInsets.only(bottom: 46),
                alignment: Alignment.centerLeft,
                child: Text('Aplicativo Utilitário',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    )),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomTextWidget(
                      hintText: 'usuário',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomTextWidget(
                      hintText: 'senha',
                      obscureText: true,
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            primary: Theme.of(context).accentColor),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/ImcCalculator');
                        },
                        child: Text('ENTRAR',
                            style: TextStyle(
                              fontSize: 16,
                            ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
