import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('wastes')),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ldechets');
            },
            child: const Text('Waste list'),
          ),
          SizedBox(
            height: 48,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/adechets');
            },
            child: const Text('Add waste'),
          )
        ]),
      ),
    );
  }
}
