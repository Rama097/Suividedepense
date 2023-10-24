import 'package:flutter/material.dart';

class AjoutDepensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter une Dépense'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AjoutDepenseForm(),
      ),
    );
  }
}

class AjoutDepenseForm extends StatefulWidget {
  @override
  _AjoutDepenseFormState createState() => _AjoutDepenseFormState();
}

class _AjoutDepenseFormState extends State<AjoutDepenseForm> {
  // Les contrôleurs pour les champs du formulaire
  final TextEditingController depenseEffectueeController = TextEditingController();
  final TextEditingController budgetController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController heureController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          controller: depenseEffectueeController,
          decoration: InputDecoration(labelText: 'Produit'),
        ),
        TextFormField(
          controller: budgetController,
          decoration: InputDecoration(labelText: 'Montant'),
          keyboardType: TextInputType.number, // Pour le champ de budget
        ),
        TextFormField(
          controller: dateController,
          decoration: InputDecoration(labelText: 'Date'),
          keyboardType: TextInputType.text, // Pour le champ de date
        ),
        TextFormField(
          controller: heureController,
          decoration: InputDecoration(labelText: 'Heure'),
          keyboardType: TextInputType.text, // Pour le champ d'heure
        ),
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            // Récupérez les données du formulaire
            final depenseEffectuee = depenseEffectueeController.text;
            final budget = int.tryParse(budgetController.text) ?? 0;
            final date = dateController.text;
            final heure = heureController.text;

            
            final depenseData = {
              'depenseEffectuee': depenseEffectuee,
              'budget': budget,
              'date': date,
              'heure': heure,
            };

            // Naviguez vers la page "listeDepense" 
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ListeDepensePage(depenseData: depenseData),
              ),
            );
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    depenseEffectueeController.dispose();
    budgetController.dispose();
    dateController.dispose();
    heureController.dispose();
    super.dispose();
  }
}

class ListeDepensePage extends StatelessWidget {
  final Map<String, dynamic> depenseData;

  ListeDepensePage({required this.depenseData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste de Dépenses'),
      ),
      body: Column(
        children: <Widget>[
          Text('Dépense effectuée : ${depenseData['depenseEffectuee']}'),
          Text('Budget : ${depenseData['budget']}'),
          Text('Date : ${depenseData['date']}'),
          Text('Heure : ${depenseData['heure']}'),
        ],
      ),
    );
  }
}