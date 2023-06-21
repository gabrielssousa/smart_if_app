import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1B1B1B),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage('assets/images/smart.png'),
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Text(
                        'Seja bem vindo(a)!!',
                        style: TextStyle(
                          color: Color(0xFFD9D9D9),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Aqui no SmartIf você encontra muita coisa boa (muita coisa ruim também)',
                        style: TextStyle(
                            color: Color(0xFFD9D9D9),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  child: Image(
                    image: AssetImage(
                      'assets/images/meio.png',
                    ),
                    height: 180,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/treinos');
                      },
                      child: Text(
                        'Treinos',
                        style: TextStyle(
                          color: Color(0xFFD9D9D9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF242424),
                        padding: EdgeInsets.all(30),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/equipamentos');
                      },
                      child: Text(
                        'Equipamentos',
                        style: TextStyle(
                          color: Color(0xFFD9D9D9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF242424),
                        padding: EdgeInsets.all(30),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed('/notificacao');
                      },
                      child: Text(
                        'Suporte',
                        style: TextStyle(
                          color: Color(0xFFD9D9D9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF242424),
                        padding: EdgeInsets.all(30),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/notificacao');
                      },
                      child: Text(
                        'Notificações',
                        style: TextStyle(
                          color: Color(0xFFD9D9D9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF242424),
                        padding: EdgeInsets.all(30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
