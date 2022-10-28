import 'package:flutter/material.dart';
import 'package:myprovider/nextpage.dart';
import 'package:provider/provider.dart';
import 'counter/counter.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider  ${context.watch<counter>().count} '),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Outcome of your input ${context.watch<counter>().count} add '),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.read<counter>().add(),
              child: const Text('Add'),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                  onPressed: () => context.read<counter>().subtract(),
                  child: const Text('Subtract')),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                  onPressed: () => context.read<counter>().multiply(),
                  child: const Text('Multiply')),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                  onPressed: () => context.read<counter>().reset(),
                  child: const Text('Reset')),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 120,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Nextpage()));
                  },
                  child: const Text('Next page')),
            )
          ],
        ),
      ),
    );
  }
}
