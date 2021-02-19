import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatefulWidget {
  Post({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFF0F0F5),
        padding: EdgeInsets.all(24.0),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/logo.svg'),

                  IconButton(
                    icon: Icon(Icons.arrow_back_rounded, size: 24.0, color: Color(0xFFE02041)),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ),

              SizedBox(height: 48.0),
              card(),

              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Salve o dia!\nSeja o herói desse caso.', style: TextStyle(color: Color(0xFF13131A), fontSize: 20.0, fontWeight: FontWeight.w600)),

                    SizedBox(height: 16.0),
                    Text('Entre em contato:', style: TextStyle(color: Color(0xFF737380), fontSize: 15.0)),
                    SizedBox(height: 16.0),

                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          minWidth: (MediaQuery.of(context).size.width / 2) - 55.5,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          color: Color(0xFFE02041),
                          child: Text('WhatsApp', style: TextStyle(fontSize: 15.0, color: Colors.white))
                        ),

                        FlatButton(
                          onPressed: () {},
                          minWidth: (MediaQuery.of(context).size.width / 2) - 55.5,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          color: Color(0xFFE02041),
                          child: Text('E-mail', style: TextStyle(fontSize: 15.0, color: Colors.white))
                        ),
                      ],
                    )
                  ]
                )
              ),
            ],
          ),
        )
      ),
    );
  }

  Widget card() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CASO:', style: TextStyle(color: Color(0xFF41414D), fontSize: 14.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Text('Cadelinha atropelada', style: TextStyle(color: Color(0xFF737380), fontSize: 15.0)),
                  ],
                ),

                SizedBox(width: 40.0),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ONG:', style: TextStyle(color: Color(0xFF41414D), fontSize: 14.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Text('APAD', style: TextStyle(color: Color(0xFF737380), fontSize: 15.0)),
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DESCRIÇÃO:', style: TextStyle(color: Color(0xFF41414D), fontSize: 14.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Text('A cadelinha Jolie foi atropelada por um carro no bairro Santana e teve que passar por uma cirurgia às pressas.', style: TextStyle(color: Color(0xFF737380), fontSize: 15.0)),
              ],
            ),
          ),

          SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('VALOR:', style: TextStyle(color: Color(0xFF41414D), fontSize: 14.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Text('R\$ 120,00 reais', style: TextStyle(color: Color(0xFF737380), fontSize: 15.0)),
              ],
            ),
          ),
          SizedBox(height: 24.0),
        ]
      )
    );
  }
}
