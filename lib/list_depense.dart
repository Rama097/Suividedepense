import 'package:flutter/material.dart';

class ListeDepensePage extends StatelessWidget {
  final List<Map<String, dynamic>> listeDepenses;

  ListeDepensePage({required this.listeDepenses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste de Dépenses'),
      ),
      body: ListView.builder(
        itemCount: listeDepenses.length,
        itemBuilder: (context, index) {
          final depenseData = listeDepenses[index];
          return ListTile(
            title: Text('Dépense effectuée : ${depenseData['depenseEffectuee']}'),
            subtitle: Text('Budget : ${depenseData['budget']}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Date : ${depenseData['date']}'),
                Text('Heure : ${depenseData['heure']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}