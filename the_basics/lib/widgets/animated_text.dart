// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Aswin Biju',
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    speed: Duration(milliseconds: 100)),
              ],
              totalRepeatCount: 10,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Hello there',
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
              // totalRepeatCount: 10,
              // pause: Duration(milliseconds: 200),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('Hello World',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
            ])
          ],
        ),
      ),
    );
  }
}
