import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final duration = const Duration(milliseconds: 1500);
  var isTop = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: AnimatedAlign(
        curve: Curves.easeOut,
        alignment: isTop ? Alignment.topCenter : Alignment.bottomRight,
        duration: duration,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: AnimatedContainer(
            width: isTop ? 100 : 50,
            height: 50,
            decoration: isTop
                ? const BoxDecoration(
                    color: Colors.blue,
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
            duration: duration,
            child: GestureDetector(
              onTap: () {
                isTop = !isTop;
                setState(() {});
              },
            ),
          ),
        ),
      )),
    );
  }
}
