import 'package:dio_prac/providers/meal_provider.dart';
import 'package:dio_prac/screens/meals_by_area_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AreasScreen extends ConsumerStatefulWidget {
  const AreasScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AreasScreenState();
}

class _AreasScreenState extends ConsumerState<AreasScreen> {
  @override
  Widget build(BuildContext context) {
    final areasAsyncValue = ref.watch(areasProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Areas'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: areasAsyncValue.when(
        data: (areas) {
          if (areas.isEmpty) {
            return const Center(child: Text('No areas found'));
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final area = areas[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue[100],
                    child: const Icon(Icons.public, color: Colors.blue),
                  ),
                  title: Text(
                    area.name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MealsByAreaScreen(areaName: area.name),
                      ),
                    );
                  },
                ),
              );
            },
            itemCount: areas.length,
          );
        },
        error: (error, stack) => Center(
          child: Column(
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(areasProvider);
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
