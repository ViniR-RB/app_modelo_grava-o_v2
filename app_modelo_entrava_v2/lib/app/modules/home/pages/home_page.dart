import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _sexoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    final Size size = MediaQuery.of(context).size;
    setState(() {
      isLoading = false;
    });
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
              height: size.height / 20,
              width: size.height / 20,
              child: CircularProgressIndicator(),
            ))
          : body(isLoading),
    );
  }

  Widget body(bool isLoading) {
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
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: ListView(children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Cadastrar-se',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 14,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: TextFormField(
                                    validator: (nome) {
                                      if (nome!.isEmpty) {
                                        return "Preencha o nome";
                                      } else if (nome.isNotEmpty) {
                                        return null;
                                      }
                                    },
                                    controller: _nomeController,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.people),
                                        hintText: 'Name',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 14,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: TextFormField(
                                    validator: (email) {
                                      if (email!.isEmpty) {
                                        return "Preencha a e-mail";
                                      } else if (email.isNotEmpty) {
                                        return null;
                                      }
                                    },
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email),
                                        hintText: 'E-mail',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 14,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: TextFormField(
                                    validator: (idade) {
                                      if (idade!.isEmpty) {
                                        return "Preencha a idade";
                                      } else if (idade.isNotEmpty) {
                                        return null;
                                      }
                                    },
                                    controller: _idadeController,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.timer_sharp),
                                        hintText: 'Idade',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                                Dropdown(),
                              ],
                            ))
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        Modular.to.navigate('/lesson/');
                      }
                    },
                    child: Text('Gravar Àudios'),
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0f0882)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget field(Size size, String hintText, IconData icon,
      TextEditingController controller) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.2,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }

  Widget Dropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Sexo:',
          style: TextStyle(
              fontFamily: 'MochiyPopOne',
              fontSize: 16,
              color: Color(0xFF0f0882)),
        ),
        DropdownButton(
          hint: Text(
            _sexoController.text,
            style: const TextStyle(color: Color(0xFF0f0882)),
          ),
          items: ['Feminino', 'Masculino'].map((String sexo) {
            return DropdownMenuItem<String>(
              value: sexo,
              child: Text(sexo),
            );
          }).toList(),
          onChanged: (sexo) {
            setState(() {
              _sexoController.text = sexo.toString();
            });
          },
        ),
      ],
    );
  }
}
