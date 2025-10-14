import 'package:flutter/material.dart';

void main() {
  runApp(const PrestigeWare());
}

class PrestigeWare extends StatelessWidget {
  const PrestigeWare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PrestigeWare',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PrestigeWare'),
          ),
          
      )
      ,
    
    );
  }
}
