import 'package:article/features/authentication/authentication.dart';
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
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 3, 57, 100),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 320,
              height: 360,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bem vindo ao Design Diário',
                            style: theme.textTheme.headline6!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Entre com sua conta ou crie uma nova para acessar o conteúdo',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.subtitle1!
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(16)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 3, 57, 100),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.route);
                            },
                            child: Text('Acessar conta'.toUpperCase()),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(16)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 3, 57, 100),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RegisterScreen.route);
                            },
                            child: Text(
                              'Criar nova conta'.toUpperCase(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
