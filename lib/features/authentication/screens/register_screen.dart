import 'package:article/features/authentication/widgets/header_compact.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static String route = '$RegisterScreen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CompactHeader(
        onBack: () {
          Navigator.pop(context);
        },
        showDivider: false,
        title: 'Cadastro',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Cadastre-se agora mesmo no Design Diário',
              style: theme.textTheme.headline5!.copyWith(
                color: const Color.fromARGB(255, 3, 57, 100),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome completo',
                      hintText: 'Digite seu nome',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu E-mail',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Digite sua senha',
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(16)),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 3, 57, 100),
                    )),
                onPressed: () {},
                child: Text(
                  'Cadastrar'.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
