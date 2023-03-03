
import 'package:ai_image_generator/home.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(
    const AiImageGenerator()
  );
}

class AiImageGenerator extends StatelessWidget {
  const AiImageGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AI Image Generator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: "Lato"
      ),
      home: const Home(),
    );
  }
}