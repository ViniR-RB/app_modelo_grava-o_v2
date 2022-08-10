import 'package:app_modelo_entrava_v2/app/modules/lesson/lesson_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LessonPage extends StatefulWidget {
  LessonPage({Key? key}) : super(key: key);

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  final index = 0;
  LessonController _controller = Modular.get();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(appBar: appbar(), body: body());
  }

  AppBar appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Lista de Lições',
            style: TextStyle(
                fontFamily: 'Purple Purse',
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return StreamBuilder<QuerySnapshot>(
      stream: _controller.getcapture(),
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container(
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height / 5.4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: snapshot.data!.docs.map((doc) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.8,
                    decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 4,
                              offset: Offset(0.0, 0.75))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue,
                        shape: BoxShape.rectangle),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          doc['tasks'][index]['title'],
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Grave a letra',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                  ),
                );
              }).toList(),
            ),
          );
        }
      }),
    );
  }
}
