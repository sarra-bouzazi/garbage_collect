import 'package:flutter/material.dart';

import 'dechets.dart';

class AddUserDialog extends StatefulWidget {
  final Function(Dechets) addUser;

  AddUserDialog(this.addUser);

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var typeController = TextEditingController();
    var adresseController = TextEditingController();
    var prixController = TextEditingController();
    var qteController = TextEditingController();
    var dateController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Add dechets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
            buildTextField('type', typeController),
            buildTextField('adresse', adresseController),
            buildTextField('prix', prixController),
            buildTextField('qte', prixController),
            buildTextField('date', prixController),
            ElevatedButton(
              onPressed: () {
                // ignore: non_constant_identifier_names
                final dechets = Dechets(typeController.text,
                    adresseController.text, prixController.text);
                widget.addUser(dechets);
                Navigator.of(context).pop();
              },
              child: Text('Add dechets'),
            ),
          ],
        ),
      ),
    );
  }
}
