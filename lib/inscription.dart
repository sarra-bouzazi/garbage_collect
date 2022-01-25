import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/text.dart';

class inscription extends StatefulWidget {
  @override
  _State createState() => _State();
}

enum SingingCharacter { woman, man }

class _State extends State<inscription> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController adresseController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SingingCharacter? _character = SingingCharacter.woman;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Collecte des Déchets')),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Lastname',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: adresseController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Adresse',
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        RadioListTile<SingingCharacter>(
                          title: const Text('Woman'),
                          value: SingingCharacter.woman,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        RadioListTile<SingingCharacter>(
                          title: const Text('Man'),
                          value: SingingCharacter.man,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Signup'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.pushNamed(context, '/connexion');
                      },
                    )),
              ],
            )));
  }
}
