import 'package:flutter/material.dart';
import 'package:third_expences_project/widget/expences.dart';
void main() {
  runApp( MaterialApp(
      theme:ThemeData(useMaterial3: true) ,
      home: const Expenses(),
  )
  );
}


