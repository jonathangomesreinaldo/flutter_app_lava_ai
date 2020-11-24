import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapplavaai/animations/fade.animation.dart';

class SettingsPage extends StatelessWidget {
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
                        child: FadeAnimation(1.1, Container(
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
                        child: FadeAnimation(1.2, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 40,
                        top: 20,
                        width: 500,
                        height: 140,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/person1.png')
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
                              Text("Configurações", textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
                            )
                          ],
                        )
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(0.7,Center(
                            child: Card(
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              color: Color.fromRGBO(0, 100, 190, 1),
                              child: ListTile(
                                onTap: (){},
                                title: Text("\nUser Lava Aí\n""userlavaai@user.com\n",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 18),),
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/Ring.png'),
                                ),
                                trailing: Icon(Icons.edit,color: Colors.white,),
                              ),
                            ),
                          )),
                          const SizedBox(height: 10.0,),
                          FadeAnimation(0.7,Center(
                            child: Container(
                                width: 300,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/person01.png'),
                                      fit: BoxFit.fill,
                                    )
                                )),
                          )),
                          const SizedBox(height: 25.0,),
                          FadeAnimation(0.7,Card(
                            elevation: 4.0,
                            margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.lock_outline,color: Colors.blueGrey,),
                                  title: Text("Alterar Senha",style: TextStyle(fontSize: 15),),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                  onTap: (){},
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                                  width: double.infinity,
                                  height: 1.0,
                                  color: Color.fromRGBO(65, 170, 245, 50),
                                ),
                                ListTile(
                                  leading: Icon(Icons.attach_money,color: Colors.blueGrey,),
                                  title: Text("Alterar Forma de Pagamento",style: TextStyle(fontSize: 15),),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                  onTap: (){},
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal:8.0),
                                  width: double.infinity,
                                  height: 1.0,
                                  color: Color.fromRGBO(65, 170, 245, 50),
                                ),
                                ListTile(
                                  leading: Icon(Icons.home,color: Colors.blueGrey,),
                                  title: Text("Alterar Endereço",style: TextStyle(fontSize: 15),),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                  onTap: (){},
                                )
                              ],
                            ),
                          )),
                          const SizedBox(height: 20.0,),
                          FadeAnimation(0.8,Text("Configurações de Notificação",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(65, 170, 245, 50),
                          )),),
                          FadeAnimation(0.8,SwitchListTile(
                            activeColor: Color.fromRGBO(0, 100, 190, 1),
                            contentPadding: const EdgeInsets.all(0),
                            value: true,
                            title: Text("Receber Notificações",style: TextStyle(fontSize: 15),),
                            onChanged: (val){},
                          )),
                          FadeAnimation(0.8,SwitchListTile(
                            activeColor: Color.fromRGBO(0, 100, 190, 1),
                            contentPadding: const EdgeInsets.all(0),
                            value: false,
                            title: Text("Receber notificações",style: TextStyle(fontSize: 15),),
                            onChanged: (val){},
                          )),
                          FadeAnimation(0.8,SwitchListTile(
                            activeColor: Color.fromRGBO(0, 100, 190, 1),
                            contentPadding: const EdgeInsets.all(0),
                            value: true,
                            title: Text("Receber Notificações de Cupons",style: TextStyle(fontSize: 15),),
                            onChanged: (val){},
                          )),
                          FadeAnimation(0.8,SwitchListTile(
                            activeColor: Color.fromRGBO(0, 100, 190, 1),
                            contentPadding: const EdgeInsets.all(0),
                            value: true,
                            title: Text("Receber Notificações de Atualizações",style: TextStyle(fontSize: 15),),
                            onChanged: (val){},
                          )),
                          const SizedBox(height: 20.0,),
                          FadeAnimation(0.8,Text("Outras Configurações",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(65, 170, 245, 50),
                          )),),
                          FadeAnimation(0.8,SwitchListTile(
                            activeColor: Color.fromRGBO(0, 100, 190, 1),
                            contentPadding: const EdgeInsets.all(0),
                            value: false,
                            title: Text("Modo Escuro",style: TextStyle(fontSize: 15),),
                            onChanged: (val){
                            },
                          )),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

