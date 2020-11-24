import 'package:flutter/cupertino.dart';
import 'package:flutterapplavaai/animations/fade.animation.dart';
import 'package:flutterapplavaai/navigation/homepscreen.layout.dart';
import 'package:flutter/material.dart';

/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 26,fontWeight:FontWeight.bold ),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,size: 25,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: AspectRatio(
                        aspectRatio: 2.8/1,
                        child: FadeAnimation(1, Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text("Cupons", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                        )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.1, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Serviços", style: TextStyle(fontSize: 16),),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.2, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Planos", style: TextStyle(fontSize: 16),),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.3, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Sobre", style: TextStyle(fontSize: 16),),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.4, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Ajuda", style: TextStyle(fontSize: 16),),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              FadeAnimation(1.5, makeItem(image: 'assets/kiloclothes.jpg', title: 'Lavagens Por Quilo',subtitle: 'Roupas em geral', price: 'R\$50',tag: 'red', context: context)),
              FadeAnimation(1.6, makeItem(image: 'assets/leatherclothes.jpg', title: 'Revitalizações',subtitle: 'Peças em couro', price: 'R\$75',tag: 'blue', context: context)),
              FadeAnimation(1.7, makeItem(image: 'assets/rugclothes.jpg', title: 'Lavagens Especiais',subtitle: 'Tapets e cortinas', price: 'R\$60',tag: 'white', context: context)),
            ],
          ),
        ),
      ),
    );
  }*/

class HomeScreen extends StatelessWidget {
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
                        child: FadeAnimation(0.5, Container(
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
                        child: FadeAnimation(0.6, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        top: 55,
                        left: 200,
                        width: 60,
                        height: 35,
                        child: FadeAnimation(0.7, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 40,
                        top: 20,
                        width: 500,
                        height: 140,
                        child: FadeAnimation(0.8, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Person2.png')
                              )
                          ),
                        )),
                      ),*/
                      Positioned(
                        top: 35,
                        left: 10,
                        width: 400,
                        child: FadeAnimation(0.9, Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child:
                              Text("Home", textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
                            )
                          ],
                        )
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 45,
                          child: FadeAnimation(0.6,ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                child: AspectRatio(
                                  aspectRatio: 2.3/1,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 100, 190, 1),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(
                                      child: Text("Cupons", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 2.2/1,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Center(
                                    child: Text("Serviços", style: TextStyle(fontSize: 15,color: Colors.blueGrey,fontWeight: FontWeight.w500),),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 2.2/1,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Center(
                                    child: Text("Planos", style: TextStyle(fontSize: 15,color: Colors.blueGrey,fontWeight: FontWeight.w500),),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 2.2/1,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Center(
                                    child: Text("Sobre", style: TextStyle(fontSize: 15,color: Colors.blueGrey,fontWeight: FontWeight.w500),),
                                  ),
                                ),
                              ),
                              AspectRatio(
                                aspectRatio: 2.2/1,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Center(
                                    child: Text("Ajuda", style: TextStyle(fontSize: 15,color: Colors.blueGrey,fontWeight: FontWeight.w500),),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(0.7,makeItem(image: 'assets/images/kiloclothes.jpg', title: 'Lavagens Por Quilo',subtitle: 'Roupas em geral', price: '25\% de desconto!',tag: 'red', context: context)),
                        FadeAnimation(0.7, makeItem(image: 'assets/images/leatherclothes2.jpg', title: 'Revitalizações',subtitle: 'Peças em couro', price: '15\% de desconto!',tag: 'blue', context: context)),
                        FadeAnimation(0.7, makeItem(image: 'assets/images/courtain1.jpg', title: 'Lavagens Especiais',subtitle: 'Tapets e cortinas', price: '10\% de desconto!',tag: 'white', context: context)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  Widget makeItem({image, tag,title,subtitle, price, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image: image,)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10,
                    offset: Offset(0, 10)
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(0.7, Text(title??'Texto', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 10,),
                        FadeAnimation(0.8, Text(subtitle??"Subtexto", style: TextStyle(color: Colors.white, fontSize: 15),)),

                      ],
                    ),
                  ),
                ],
              ),
              FadeAnimation(1.4, Text(price??"Preço\$", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
      ),
    );
  }
}

