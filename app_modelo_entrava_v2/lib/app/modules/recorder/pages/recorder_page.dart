import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RecorderPage extends StatefulWidget {
  final String word;
  const RecorderPage({
    required this.word,
    Key? key,
  }) : super(key: key);

  @override
  State<RecorderPage> createState() => _RecorderPageState();
}

class _RecorderPageState extends State<RecorderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
            'Tela de Gravação',
            style: TextStyle(fontSize: 28.0),
          ),),
      body: body(),
    );
  }

  Widget body() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF0f0882), Color(0xFF00d4ff)],
            begin: Alignment.topCenter,
            end: AlignmentDirectional.bottomCenter),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    widget.word,
                    style: TextStyle(fontSize: 150.0),
                  ),
                  Text(
                    "Sustente a vogal "+ widget.word+" pelo \ntempo que você conseguir \nde forma confortável\n",
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "aperte e segure o botão \npara começar a captura\n",
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton.icon(
                    icon: Icon(
                      Icons.mic,
                      size: 160.0,
                    ),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 200),
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
