import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sacolao_app/src/auth/components/custom_text_field.dart';
import 'package:sacolao_app/src/auth/sign_up_screen.dart';
import 'package:sacolao_app/src/base/base_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 40),
                      children: [
                        TextSpan(
                          text: 'Sacolão',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Cesão',
                          style: TextStyle(color: Colors.amberAccent),
                        ),
                      ],
                    ),
                  ),
                  // Animated
                  SizedBox(
                    height: 30,
                    child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Fodão'),
                            FadeAnimatedText('Ziqueira'),
                            FadeAnimatedText('Kahhoootinhooo'),
                            FadeAnimatedText('Chamadinhaaaa'),
                          ],
                        )),
                  )
                ],
              ),
            ),
            // Formulário
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextField(
                    icon: Icons.email,
                    label: 'Email',
                  ),
                  const CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),
                  SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (c) {
                              return const BaseScreen();
                            }));
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(fontSize: 18),
                          ))),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  // divisor
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Ou'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // cadastro
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            side: const BorderSide(
                              width: 2,
                              color: Colors.red,
                            )),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (c) {
                            return SignUpScreen();
                          }));
                        },
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
