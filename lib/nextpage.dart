import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter/counter.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Outcome of your input ${context.watch<counter>().count} add '),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () => context.read<counter>().add(),
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('backpage'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
