import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/logo.svg'),

                  RichText(
                    text: TextSpan(
                      text: 'Total de ', style: TextStyle(color: Color(0xFF737380), fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(text: '42 casos', style: TextStyle(fontWeight: FontWeight.bold))
                      ]
                    ),
                  )
                ],
              ),

              SizedBox(height: 48.0),
              Text('Bem-vindo!', style: TextStyle(color: Color(0xFF13131A), fontSize: 30.0, fontWeight: FontWeight.w500)),
 
              SizedBox(height: 16.0),
              Text('Escolha um dos casos abaixo\ne salve o dia.', style: TextStyle(height: 1.5, color: Color(0xFF737380), fontSize: 20.0)),

              SizedBox(height: 32.0),
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, i) => card(),
                  separatorBuilder: (context, i) => SizedBox(height: 16.0),
                ),
              )
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
                Text('VALOR:', style: TextStyle(color: Color(0xFF41414D), fontSize: 14.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Text('R\$ 120,00 reais', style: TextStyle(color: Color(0xFF737380), fontSize: 15.0)),
              ],
            ),
          ),

          SizedBox(height: 32.0),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/post'),
            child: Container(
              padding: EdgeInsets.only(
                top: 18.0,
                bottom: 22.0,
                left: 24.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFFF0F0F5),
                    width: 1,
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ver mais detalhes', style: TextStyle(color: Color(0xFFE02041), fontSize: 15.0, fontWeight: FontWeight.w600)),
                  Icon(Icons.chevron_right, color: Color(0xFFE02041)),
                ],
              )
            ),
          ),
        ]
      )
    );
  }
}
