import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  static String route = '$InitialScreen';
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 3, 57, 100),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
              width: 320,
              height: 370,
              color: Colors.white,
              child: Column(
                children: const [
                  Expanded(child: Text('Bem vindo ao design Diário'))
                ],
              )),
        ),
      ),
    );
  }
}
