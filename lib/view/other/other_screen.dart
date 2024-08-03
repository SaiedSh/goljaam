import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/routes/routes.dart';

class OtherGuysScreen extends StatefulWidget {
  const OtherGuysScreen({super.key});

  @override
  State<OtherGuysScreen> createState() => _OtherGuysScreenState();
}

class _OtherGuysScreenState extends State<OtherGuysScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MyRoutes.snakeGame,
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/images/snake.png'),
                        fit: BoxFit.fill)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
