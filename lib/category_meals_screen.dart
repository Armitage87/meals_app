import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String title;

  // const CategoryMealsScreen(
  //     {super.key, required this.categoryId, required this.title});

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String title = routArgs['title']!;
    final String id = routArgs['id']!;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('The recipes for this category'),
      ),
    );
  }
}
