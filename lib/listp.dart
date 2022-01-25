import 'package:flutter/material.dart';
import 'detailpersonne.dart';
import 'personne.dart';

class listepersonne extends StatelessWidget {
  List<Personne> liste = [
    Personne('Monica', 23.500, "rue12", 2, "21/06"),
    Personne('Rachel', 12.600, "rue12", 2, "21/06"),
    Personne('Joey', 25.800, "rue12", 5, "2/08"),
    Personne('Chandler', 2.000, "rue12", 3, "25/10"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text('liste des personnes'),
        ),
        body: ListView.separated(
          itemCount: liste.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                detailpersonne(liste[index])));
                  },
                  child: Text(liste[index].name),
                ));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(color: Colors.lightBlue),
        ));
  }
}
