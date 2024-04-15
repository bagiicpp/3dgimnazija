import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const Image(image: AssetImage('assets/logo.png'), height: 300),

            const SizedBox(
              height: 25,
            ),
            //Naslov
            const Text("3Д Гимназија",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),
            //Izrabotil
            const Text(
              "Благоја Василев",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),

            const SizedBox(
              height: 20,
            ),

            MyButton(
                onTap: () => Navigator.pushNamed(context, '/glaven_vlez'),
                child: const Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}
