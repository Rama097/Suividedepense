import 'package:flutter/material.dart';
import 'acceuil.dart';
import 'ajout_depense.dart';
import 'list_depense.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suivi de Dépenses'), // Titre de l'application
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo 
            Image.asset('assets/logo.png'), 

            // Espacement
            SizedBox(height: 20),

          
            Text(
              'Bienvenue dans l\'appli de suivi de dépenses',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Espacement
            SizedBox(height: 20),

            // Bouton pour accéder à la page suivante 
            ElevatedButton(
              onPressed: () {
                // Naviguer vers la page d'accueil
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Accueil()));
              },
              child: Text('Suivante'),
            ),
          ],
        ),
      ),
    );
  }
}