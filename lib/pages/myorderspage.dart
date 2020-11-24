import 'package:flutter/material.dart';
import 'package:flutterapplavaai/animations/fade.animation.dart';
import 'package:flutter/services.dart';
class MyOrdersPage extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              FadeAnimation(0.8,Stack(
                children: <Widget>[
                  Positioned(
                    top: 50,
                  left: 20,
                  width: 40,
                  height: 40,
                   child: Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage(
                           'assets/images/clock.png'
                         )
                       )
                     ),
                   ),
                  ),
                  Positioned(
                    bottom: 1,
                    left: 140,
                    width: 300,
                    height: 180,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/person2.png'
                              )
                          )
                      ),
                    ),
                  )
                ],
              )),
              FadeAnimation(0.8,Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),

                  child: FadeAnimation(0.8,Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        onTap: (){},
                        title: Text(
                          '\n\n\nOlá! \nFaça o Login  ou Registre-se, para ter acesso aos serviços e descontos! \n\n =)', style: TextStyle(
                            color: Colors.white,
                            //fontFamily: 'OpenSans',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
  }