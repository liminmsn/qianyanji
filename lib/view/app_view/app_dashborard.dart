import 'package:flutter/material.dart';

class AppDashborard extends StatefulWidget {
  const AppDashborard({super.key});

  @override
  State<AppDashborard> createState() => _AppDashborardState();
}

class _AppDashborardState extends State<AppDashborard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 1,
              tileMode: TileMode.repeated,
              colors: [Colors.yellow, Colors.orange],
            ).createShader(bounds);
          },
          child: const Text(
            "hello world",
            style: TextStyle(fontSize: 80, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
