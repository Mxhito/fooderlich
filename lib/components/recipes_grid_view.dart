import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({Key? key, required this.recipe}) : super(key: key);

  final List<SimpleRecipe> recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        itemCount: recipe.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500.0),
        itemBuilder: (context, index) {
          final simpleRecipe = recipe[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}
