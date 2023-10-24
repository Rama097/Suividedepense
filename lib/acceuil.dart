import 'package:flutter/material.dart';
import 'ajout_depense.dart';
import 'list_depense.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),

      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Liens 
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    // Naviguer vers la première page
                    
                  },
                  child: Text('Acceuil'),
                ),
                InkWell(
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => AjoutDepensePage()));
                    
                  },
                  child: Text('Ajouter depense'),
                ),
                InkWell(
                  onTap: () {
                   
                    },
                  
                  child: Text('Liste des depenses'),
                ),
                InkWell(
                  onTap: () {
                    
                    
                  },
                  child: Text('Statisque'),
                ),
              ],
            ), 
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('assets/resto.jpeg'),
                Image.asset('assets/pizza.jpeg'),
                Image.asset('assets/Supermarche.jpeg'),
               
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('assets/telephone.jpeg'),
                Image.asset('assets/glace.jpeg'),
                Image.asset('assets/argent.jpeg'),
              ],
            ),
            SizedBox(height: 70),
            Text(
              'La page d\'accueil de notre application de gestion de suivi des dépenses vous offre un aperçu rapide de vos finances personnelles. ',
              style: TextStyle(fontSize: 16),
            ), 
          ], 
        ),
      ),
    );
  }
}