import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_drawer.dart';
import '../models/training_plans.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Planes de Entrenamiento',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: TrainingPlans.allPlans.map((plan) {
                  return Card(
                    color: Colors.deepPurple[50],
                    child: ListTile(
                      leading: Icon(Icons.fitness_center, color: Colors.deepPurple),
                      title: Text(plan.title),
                      subtitle: Text(plan.description),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
