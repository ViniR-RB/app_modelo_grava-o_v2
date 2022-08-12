import 'package:app_modelo_entrava_v2/app/modules/recorder/pages/recorder_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RecorderModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const RecorderPage(word: "G",)),
  ];
}
