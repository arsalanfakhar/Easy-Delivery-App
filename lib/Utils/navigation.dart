import 'package:flutter/material.dart';

class Navigate
{
  static void page(BuildContext context,StatefulWidget screen)
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
  static void searchBar(BuildContext context,StatelessWidget screen)
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}