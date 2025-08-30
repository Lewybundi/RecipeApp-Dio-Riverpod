import 'package:dio_prac/providers/meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealDetailsScreen extends ConsumerStatefulWidget {
  final String mealId;

  const MealDetailsScreen({super.key, required this.mealId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MealDetailsScreenState();
}

class _MealDetailsScreenState extends ConsumerState<MealDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final mealAsyncValue = ref.watch(mealDetailsProvider(widget.mealId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: mealAsyncValue.when(
        data: (meal) {
          if (meal == null) {
            return const Center(child: Text('Meal not found'));
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.network(
                    meal.thumbnail ?? '',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: double.infinity,
                        height: 250,
                        color: Colors.grey[300],
                        child: const Icon(Icons.restaurant, size: 100),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),

                // Title
                Text(
                  meal.name,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    if (meal.category != null) ...[
                      Chip(
                        label: Text('Category: ${meal.category}'),
                        backgroundColor: Colors.orange[100],
                      ),
                      const SizedBox(width: 8),
                      if (meal.area != null)
                        Chip(
                          label: Text('Area: ${meal.area}'),
                          backgroundColor: Colors.blue[100],
                        ),
                    ],
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Ingredients',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (meal.ingredient1?.isNotEmpty == true)
                          _buildIngredientRow(meal.ingredient1!, meal.measure1),
                      if (meal.ingredient2?.isNotEmpty == true)
                          _buildIngredientRow(meal.ingredient2!, meal.measure2),
                        if (meal.ingredient3?.isNotEmpty == true)
                          _buildIngredientRow(meal.ingredient3!, meal.measure3),
                        if (meal.ingredient4?.isNotEmpty == true)
                          _buildIngredientRow(meal.ingredient4!, meal.measure4),
                        if (meal.ingredient5?.isNotEmpty == true)
                          _buildIngredientRow(meal.ingredient5!, meal.measure5),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              if (meal.instructions?.isNotEmpty == true)...[
                Text(
                'Instructions',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  meal.instructions!,
                  style: const TextStyle(height: 1.5),
                ),
              ),
            ),
              ],
               const SizedBox(height: 16),
              if(meal.youtube?.isNotEmpty==true)
               SizedBox(
               width: double.infinity,
               child: ElevatedButton.icon(
                onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('YouTube: ${meal.youtube}'),
                ),
              );
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Watch on YouTube'),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
                ),
               )
              ],
            ),
          );
        },

        error: (error, stack) => Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Icon(
        Icons.error_outline,
        size: 64,
        color: Colors.red,
      ),
      const SizedBox(height: 16),
      Text('Error: $error'),
      const SizedBox(height: 16),
       ElevatedButton(
      onPressed: () {
        ref.invalidate(mealDetailsProvider(widget.mealId));
      },
      child: const Text('Retry'),
    ),
        ],
        ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _buildIngredientRow(String ingredient, String? measure) {
    return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
    children: [
    const Icon(
    Icons.circle,
    size: 8,
    color: Colors.orange,
  ),
   const SizedBox(width: 8),
   Expanded(
    child: Text(
      '${measure?.isNotEmpty == true ? '$measure ' : ''}$ingredient',
    ),
  ),
    ],
    ),
    );
  }
}
