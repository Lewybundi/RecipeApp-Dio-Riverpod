import 'package:dio_prac/providers/meal_provider.dart';
import 'package:dio_prac/screens/areas_sceen.dart';
import 'package:dio_prac/screens/categories_screen.dart';
import 'package:dio_prac/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(mealSearchProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App '),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search Meals',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Enter meal name...',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            ref
                                .read(mealSearchProvider.notifier)
                                .searchMeals(_searchController.text);
                          },
                          icon: const Icon(Icons.search),
                        ),
                      ),
                      onSubmitted: (value) {
                        ref
                            .read(mealSearchProvider.notifier)
                            .searchMeals(value);
                      },
                    ),
                    const SizedBox(height: 16),
                    searchState.when(
                      data: (meals) {
                        if (meals.isEmpty) {
                          return const Center(
                            child: Text('No meals found. Try searching!'),
                          );
                        }
                        return SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: meals.length,
                            itemBuilder: (context, index) {
                              final meal = meals[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => 
                                     MealDetailsScreen(mealId: meal.id),
                                    ),
                                  );
                                },
                                child: Container(
                                 width: 150,
                                margin: const EdgeInsets.only(right: 8),
                                child: Card(
                                child: Column(
                                 children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius
                                                .vertical(top: Radius.circular(8)),
                                            child: Image.network(
                                              meal.thumbnail ?? '',
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              errorBuilder: (context, error, stackTrace) {
                                                return Container(
                                                  color: Colors.grey[300],
                                                  child: const Icon(
                                                    Icons.restaurant,
                                                    size: 50,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Text(
                                            meal.name,
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                ),
                                ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                      error: (error, stack) => Center(
                        child: Text('Error: $error'),
                      ),
                      loading: ()=>const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            Row(
            children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoriesScreen(),
                        ),
                      );
                }, 
                icon: const Icon(Icons.category),
                label: const Text('Browse Categories'),
                )
              ),
               const SizedBox(width: 16),
                  Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AreasScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.public),
                    label: const Text('Browse Areas'),
                  ),
                ),
            ],
            )
          ],
        ),
      ),
    );
  }
}
