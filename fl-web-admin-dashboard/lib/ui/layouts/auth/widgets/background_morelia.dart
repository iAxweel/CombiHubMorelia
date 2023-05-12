import 'package:flutter/material.dart';

class BackgroundMorelia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image(
              image: AssetImage('MainLogo.png'),
              width: 400,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
      image: AssetImage('morelia-bg.jpeg'),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
    ));
  }
}
