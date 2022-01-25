import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/text.dart';
import 'dechets.dart';
import 'user_dialog.dart';

class adechets extends StatefulWidget {
  const adechets({Key? key}) : super(key: key);

  @override
  _adechets createState() => _adechets();
}

class _adechets extends State<adechets> {
  List<Dechets> userList = [];

  @override
  Widget build(BuildContext context) {
    void addUserData(Dechets user) {
      setState(() {
        userList.add(user);
      });
    }

    void showUserDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: AddUserDialog(addUserData),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDialog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Waste list'),
      ),
      body: Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  userList[index].type,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  userList[index].adresse,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Text(userList[index].prix),
              ),
            );
          },
          itemCount: userList.length,
        ),
      ),
    );
  }
}
