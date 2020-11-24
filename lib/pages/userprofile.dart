
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapplavaai/animations/fade.animation.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background2.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      /*Positioned(
                        left: 50,
                        width: 60,
                        height: 55,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 100,
                        width: 60,
                        height: 70,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 30,
                        top: 20,
                        width: 500,
                        height: 140,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/person3.png')
                              )
                          ),
                        )),
                      ),*/
                      Positioned(
                        top: 35,
                        left: 10,
                        width: 400,
                        child: FadeAnimation(0.6, Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child:
                              Text("Login", textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
                            )
                          ],
                        )
                        ),
                      )
                    ],
                  ),
                ),
                FadeAnimation(0.6,Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/person0.png'),
                        fit: BoxFit.fill,
                    )
                ))),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(0.6, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(65, 170, 245, .6),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                        FadeAnimation(0.7,Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Digite seu Email",
                                    hintStyle: TextStyle(fontSize:15,color: Colors.grey[400])
                                ),
                              ),
                            )),
                            FadeAnimation(0.7,Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Digite a Senha",
                                    hintStyle: TextStyle(fontSize:15,color: Colors.grey[400])
                                ),
                              ),
                            ))
                          ],
                        ),
                      )),
                        SizedBox(height: 30,),
                        FadeAnimation(0.7, Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(0, 100, 190, 45),
                                    Color.fromRGBO(65, 170, 245, .6),
                              ]
                            )
                          ),
                          child: ListTile(
                            onTap: (){},
                            title: Text("Login",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold)),
                          ),
                        )),
                          SizedBox(height: 5 ,),
                          FadeAnimation(0.7,Container(
                            child: ListTile(
                              onTap: (){},
                              title: Text("Esqueceu a senha?",textAlign: TextAlign.right, style: TextStyle(fontSize:13,color: Color.fromRGBO(0, 100, 190, 1)),)
                          ),
                        )),
                      SizedBox(height: 5,),
                      FadeAnimation(0.8,Container(
                        child: ListTile(
                            title: Text("- Ou -",textAlign: TextAlign.center, style: TextStyle(fontSize:15,color: Color.fromRGBO(0, 100, 190, 1)),)
                        ),
                      )),
                          SizedBox(height: 1),
                    FadeAnimation(0.8,Container(
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            _googleSignInButton(),
                            SizedBox(height: 15,),
                            _facebookSignInButton(),
                          ],
                        ),
                      ),
                    )),
                      SizedBox(height: 10 ,),
                      FadeAnimation(0.8,Container(
                        child: ListTile(
                          onTap: (){},
                            title: Text("Não possui Login?           ""Registrar-se",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Color.fromRGBO(0, 100, 190, 1)),)
                        ),
                      )),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
Widget _googleSignInButton() {
  return OutlineButton(
    splashColor: Color.fromRGBO(65, 170, 245, .6),
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    highlightElevation: 4,
    borderSide: BorderSide(color: Color.fromRGBO(65, 170, 245, .6),),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/images/google_logo.png'), height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Logar com o Google',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(0, 100, 190, 45),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
Widget _facebookSignInButton() {
  return OutlineButton(
    splashColor: Color.fromRGBO(65, 170, 245, .6),
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    highlightElevation: 4,
    borderSide: BorderSide(color: Color.fromRGBO(65, 170, 245, .6),),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/images/facebook_logo.jpg'), height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Logar com o Facebook',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(0, 100, 190, 45),
              ),
            ),
          )
        ],
      ),
    ),
  );
}