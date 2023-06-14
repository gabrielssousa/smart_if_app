import 'package:flutter/material.dart';

import 'home_page.dart';

class TelaEquipamentos extends StatelessWidget {
  const TelaEquipamentos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: bildAppBar(),
        backgroundColor: Color(0xFF1B1B1B),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              buildContainerEquip(),
              buildContainerSupi(),
              buildContainerRos(),
              buildContainerFly(),
              buildContainerLeg(),
              buildContainerBut(context),
            ],
          ),
        ),
      ),
    );
  }
}

buildContainerEquip() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Equipamentos',
                  style: TextStyle(
                      fontFamily: 'sans-serif',
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

buildContainerSupi() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1B1B1B)),
    child: Container(
      color: Color(0xFF1B1B1B),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.start, // Alinhamento na lateral esquerda
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://www.smartfit.com.br/news/wp-content/uploads/2016/06/varia%C3%A7%C3%B5es-de-supino-inclina%C3%A7%C3%A3o.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(width: 30), // Espaço entre a imagem e o texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Supino',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFc6c6c6),
                    fontSize: 20,
                  ),
                ),
                // Outros widgets adicionais aqui
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

buildContainerLeg() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1B1B1B)),
    child: Row(
      mainAxisAlignment:
          MainAxisAlignment.start, // Alinhamento na lateral esquerda
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://www.dicasdetreino.com.br/wp-content/uploads/2018/10/Exerc%C3%ADcio-Leg-Press-Execu%C3%A7%C3%A3o-Varia%C3%A7%C3%B5es-Erros-e-Dicas.jpg',
            height: 120,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 30), // Espaço entre a imagem e o texto
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Leg Press',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFc6c6c6),
                  fontSize: 20,
                ),
              ),
              // Outros widgets adicionais aqui
            ],
          ),
        ),
      ],
    ),
  );
}

buildContainerFly() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1B1B1B)),
    child: Row(
      mainAxisAlignment:
          MainAxisAlignment.start, // Alinhamento na lateral esquerda
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://reforcejau.com.br/imagem/66-PECK-DECK-FLY-codigo-LE-10-06.jpg',
            height: 120,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 30), // Espaço entre a imagem e o texto
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fly Peitoral',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFc6c6c6),
                  fontSize: 20,
                ),
              ),
              // Outros widgets adicionais aqui
            ],
          ),
        ),
      ],
    ),
  );
}

buildContainerRos() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1B1B1B)),
    child: Row(
      mainAxisAlignment:
          MainAxisAlignment.start, // Alinhamento na lateral esquerda
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://blog.lionfitness.com.br/wp-content/uploads/2018/11/rosca-scott-equipamentos-lion-fitness.jpg',
            height: 120,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 30), // Espaço entre a imagem e o texto
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rosca Scott',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFc6c6c6),
                  fontSize: 20,
                ),
              ),
              // Outros widgets adicionais aqui
            ],
          ),
        ),
      ],
    ),
  );
}

buildContainerBut(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    padding: EdgeInsets.all(0),
                    backgroundColor: Color(0xFF101015),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: Image.asset(
                    'assets/images/smart.png',
                    height: 70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


