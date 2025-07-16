import 'package:flutter/material.dart';

void main() {
  runApp(const DietPlanApp());
}

class DietPlanApp extends StatelessWidget {
  const DietPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Diet Plan',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DietPlanScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DietPlanScreen extends StatelessWidget {
  const DietPlanScreen({super.key});

  final List<Map<String, String>> meals = const [
    {'meal': 'Breakfast', 'food': 'Oatmeal with fruits'},
    {'meal': 'Snack', 'food': 'Greek yogurt with honey'},
    {'meal': 'Lunch', 'food': 'Grilled chicken salad'},
    {'meal': 'Snack', 'food': 'Mixed nuts'},
    {'meal': 'Dinner', 'food': 'Baked salmon with veggies'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Diet Plan'),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.restaurant_menu),
              title: Text(meal['meal']!),
              subtitle: Text(meal['food']!),
            ),
          );
        },
      ),
    );
  }
} 