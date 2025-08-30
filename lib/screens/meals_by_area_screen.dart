import 'package:dio_prac/providers/meal_provider.dart';
import 'package:dio_prac/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealsByAreaScreen extends ConsumerWidget {
  final String areaName;
  const MealsByAreaScreen({super.key, required this.areaName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealsAsyncValue = ref.watch(mealsByAreaProvider(areaName));
    return Scaffold(
      appBar: AppBar(
        title: Text('$areaName Cuisine'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: mealsAsyncValue.when(
        data: (meals) {
          if (meals.isEmpty) {
            return const Center(child: Text('No meals found from this area'));
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              final meal = meals[index];
              return Card(
               margin: const EdgeInsets.only(bottom: 12),
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(12),
               ),
               child: InkWell(
               onTap: () {
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealDetailsScreen(
                    mealId: meal.id,
                  ),
                ),
              );
               },
               borderRadius: BorderRadius.circular(12),
               child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
              children: [
              ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                meal.thumbnail ?? '',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                return Container(
                width: 80,
                height: 80,
                color: Colors.grey[300],
                child: const Icon(
                  Icons.restaurant,
                  size: 40,
                ),
              );
                },
              ),
              ),
              const SizedBox(width: 16),
              Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              meal.name,
              style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
             ),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              if(meal.category!=null)
              Text(
              'Category:${meal.category}',
               style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              ),
              const SizedBox(height: 8),
              Row(
              children: [
              Icon(
              Icons.public,
              size: 16,
              color: Colors.blue[600],
             ),
             const SizedBox(width: 4),
             Text(
              areaName,
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue[600],
                fontWeight: FontWeight.w500,
              ),
              ),
              ],
              )
              ],
              )
              ),
              const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
              ],
              ),
              ),
               ),
              );
            },
          );
        },
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(mealsByAreaProvider(areaName));
                },
                child: Text('Retry'),
              ),
            ],
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
