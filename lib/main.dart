import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Canvas Example"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.white,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[200],
            child: CustomPaint(painter: DrawShape()),
          ),
        ),
      ),
    );
  }
}

class DrawShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0
      ..color = Colors.red;

    //draw vertical line
    canvas.drawLine(Offset(20.0, 30.0), Offset(20.0, 60.0), paint);

    //draw horizontal line
    canvas.drawLine(Offset(20.0, 80.0), Offset(100.0, 80.0), paint);

    //draw a cirle
    canvas.drawCircle(Offset(150.0, 150.0), 40.0, paint);

    //draw a triangle
    canvas.drawOval(Rect.fromLTWH(200, 200, 100, 60), paint);

    canvas.drawRect(Rect.fromLTWH(100, 300, 200, 60), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
