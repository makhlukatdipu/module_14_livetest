import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:module_14_livetest/ProductModel.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List recipes = [];
  final String jsonData = '''
[
  {
    "id": 1, 
    "title": "Chicken Biryani",
    "description": "Aromatic basmati rice cooked with spiced chicken.",
    "calories": 550},
  {
    "id": 2,
    "title": "Beef Curry", 
    "description": "Slow-cooked beef in a rich curry gravy.", 
    "calories": 620
  },
  {
    "id": 3, 
    "title": "Vegetable Khichuri",
    "description": "Rice and lentils cooked with mixed vegetables.", 
    "calories": 400
  },
  {
    "id": 4,
    "title": "Pasta Alfredo",
    "description": "Creamy white sauce pasta with parmesan cheese.",
    "calories": 480
  },
  {
    "id": 5, 
    "title": "Grilled Sandwich", 
    "description": "Toasted sandwich filled with cheese and vegetables.", 
    "calories": 310
  },
  {
    "id": 6, 
    "title": 
    "Chicken Fry", 
    "description": "Crispy deep-fried chicken with spices.", 
    "calories": 530},
  {
    "id": 7, 
    "title": "Egg Curry", 
    "description": "Boiled eggs cooked in masala gravy.", 
    "calories": 450
  },
  {
    "id": 8, 
    "title": "Fruit Salad", 
    "description": "Mixed seasonal fruits served chilled.", 
    "calories": 250
  },
  {
    "id": 9, 
    "title": "Fried Rice", 
    "description": "Rice fried with vegetables, egg, and soy sauce.", 
    "calories": 500
  },
  {
    "id": 10, 
    "title": "Mango Lassi", 
    "description": "Sweet yogurt drink blended with ripe mango.", 
    "calories": 300
  }
]
''';
  @override
  void initState() {
    super.initState();
    parseJson();
  }

  void parseJson() {
    List decoded = json.decode(jsonData);
    setState(() {
      recipes = decoded.map((item) => ProductModel.fromJson(item)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final item = recipes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                item.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
