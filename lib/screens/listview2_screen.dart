import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Type 1'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,
              color: Colors.indigo),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        itemCount: options.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
