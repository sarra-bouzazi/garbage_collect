import 'package:flutter/material.dart';
import 'personne.dart';

class detailpersonne extends StatelessWidget {
  Personne personne;
  detailpersonne(this.personne);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(personne.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Text('Prix:${personne.prix}'),
          Text('Adresse:${personne.adresse}'),
          Text('Qte:${personne.qte}'),
          Text('Date:${personne.date}'),
          SizedBox(
            height: 48,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("total est :47000")),
              );
            },
            child: const Text('Collecter'),
          ),
          SizedBox(
            height: 48,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listp');
            },
            child: const Text('Retour'),
          ),
        ],
      )),
    );
  }
}
