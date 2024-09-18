
class TrainingPlan {
  final String title;
  final String description;

  TrainingPlan({required this.title, required this.description});
}

class TrainingPlans {
  static String getPlanByWeight(double weight) {
    if (weight >= 50 && weight <= 70) {
      return "Recomendación: Aumenta la ingesta de proteínas y sigue una rutina de ejercicios de fuerza. Considera incluir ejercicios como levantamiento de pesas, flexiones y sentadillas.";
    } else if (weight > 70) {
      return "Recomendación: Combina ejercicios cardiovasculares con fuerza y mantén una dieta balanceada. Incorpora actividades como correr, nadar y entrenamiento con pesas moderadas.";
    } else {
      return "Recomendación: Consulta a un profesional de salud para adaptar tu rutina y dieta según tus necesidades específicas.";
    }
  }

  static List<TrainingPlan> allPlans = [
    TrainingPlan(
      title: 'Plan de Fuerza (50-70 kg)',
      description: 'Incluye levantamiento de pesas, flexiones, y sentadillas. Aumenta la ingesta de proteínas.',
    ),
    TrainingPlan(
      title: 'Plan Cardiovascular (>70 kg)',
      description: 'Combina correr, nadar y entrenamiento con pesas moderadas. Mantén una dieta balanceada.',
    ),
    // Agrega más planes según sea necesario
  ];
}
