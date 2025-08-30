import 'package:dio_prac/providers/meal_provider.dart';
import 'package:dio_prac/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealsByCategoryScreen extends ConsumerStatefulWidget {
  final String categoryName;
  const MealsByCategoryScreen({super.key, required this.categoryName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MealsByCategoryScreenState();
}

class _MealsByCategoryScreenState extends ConsumerState<MealsByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final mealsAsyncValue = ref.watch(
      mealsByCategoryProvider(widget.categoryName),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.categoryName} Meals'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: mealsAsyncValue.when(
        data: (meals) {
          if (meals.isEmpty) {
            return Center(child: Text('No meals found in this category'));
          }
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.75,
            ),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              final meal = meals[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=>MealDetailsScreen(mealId: meal.id,)
                  ));
                },
              child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Expanded(
              child: ClipRRect(
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
              ),
              child: Image.network(
              meal.thumbnail??'',
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                  return Container(
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.restaurant,
                    size: 50,
                  ),
                );
              },

              ),
              )
              ),
              Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              meal.name,
              style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
            ),
            if(meal.area!=null)...[
            const SizedBox(height: 4),
            Text(
            meal.area!,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
             ),
              ]
              ],
              ),
              )
              ],
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
                  ref.invalidate(mealsByCategoryProvider(widget.categoryName));
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
