import 'package:flutter/material.dart';
import 'package:myapp/service/provider_screen.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderScreen>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ProviderScreen>(
              builder: (context,provalue,child) {
                return Text('${provalue.count}');
              }
            ),
            FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        provider.decreament();
      }),
    );
  }
}
