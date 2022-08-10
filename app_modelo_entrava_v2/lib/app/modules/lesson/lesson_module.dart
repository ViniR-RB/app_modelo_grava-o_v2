import 'package:app_modelo_entrava_v2/app/modules/lesson/lesson_controller.dart';
import 'package:app_modelo_entrava_v2/app/modules/lesson/lessons_repository.dart';
import 'package:app_modelo_entrava_v2/app/modules/lesson/pages/lesson.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LessonModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => LessonRepository()),
    Bind((i) => LessonController(i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LessonPage())
  ];
}
