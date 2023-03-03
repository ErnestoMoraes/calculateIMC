import 'package:calca_imc/setState/imc_setstate_page.dart';
import 'package:calca_imc/value_notifier/value_notifier_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(
                context,
                const ImcSetstatePage(),
              ),
              child: const Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(
                context,
                const ValueNotifierPage(),
              ),
              child: const Text('Value Notifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Change Notifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Bloc PAttern (Streams)'),
            ),
          ],
        ),
      ),
    );
  }
}
