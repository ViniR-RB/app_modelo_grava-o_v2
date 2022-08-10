import 'package:app_modelo_entrava_v2/app/modules/lesson/lesson_module.dart';
import 'package:app_modelo_entrava_v2/app/modules/recorder/recorder_module.dart';
import 'package:app_modelo_entrava_v2/app/modules/splashpage/splash_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/recorder', module: RecorderModule()),
    ModuleRoute('/lesson', module: LessonModule()),
  ];
}
