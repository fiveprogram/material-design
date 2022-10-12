import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text('OutlinedButton')),
            FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.add)),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                // Foreground color
                onPrimary: Theme.of(context).colorScheme.onPrimary,
                // Background color
                primary: Theme.of(context).colorScheme.primary,
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('追加'),
            )
          ],
        ),
      ),
    );
  }
}
