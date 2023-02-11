import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../dummy_data.dart';

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
    final filteredMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: filteredMeal[index].id,
              title: filteredMeal[index].title,
              imgUrl: filteredMeal[index].imageUrl,
              duration: filteredMeal[index].duration,
              complexity: filteredMeal[index].complexity,
              affordability: filteredMeal[index].affordability);
        },
        itemCount: filteredMeal.length,
      ),
    );
  }
}
