import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Treino'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            WorkoutCard(
              title: 'Treino de Peito',
              description: 'Exercícios para fortalecer os musculos do peito.',
              imageUrl:
                  'https://blog.totalpass.com.br/wp-content/uploads/2022/12/treinos-de-peito.jpg',
            ),
            WorkoutCard(
              title: 'Treino de Pernas',
              description: 'Exercícios para fortalecer as pernas e glúteos.',
              imageUrl:
                  'https://blog.totalpass.com.br/wp-content/uploads/2022/10/treinos-de-perna-elavacao-de-gemeos.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  WorkoutCard(
      {required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Column(
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    child: Text('Começar Treino'),
                    onPressed: () {
                      // Lógica para começar o treino
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
