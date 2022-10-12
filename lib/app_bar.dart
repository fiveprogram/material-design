import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'ShowSnackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('this is flutter')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: '画面遷移',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('2nd'),
                    ),
                    body: const Center(
                      child: Text(
                        'Material design 3',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Flutter3',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
