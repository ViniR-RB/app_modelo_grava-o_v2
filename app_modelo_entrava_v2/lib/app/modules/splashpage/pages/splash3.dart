import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
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
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                'CONSENTIMENTO DA PARTICIPAÇÃO\nDO\nPRATICANTE NA PESQUISA',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(8),
                          child: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(
                                    text:
                                        ' Eu ,, abaixo assinado , concordo em participar da pesquisa " ComuniCARE APRAXIA : APLICATIVO PARA TERAPIA DOS NEUROLÓGICOS DISTÚRBIOS ADQUIRIDOS DE FALA " , como participante . Tive pleno conhecimento das informações que li ou que foram lidas para mim , descrevendo o estudo . Li os termos explicitados e entendo sobre a minha decisão em participar desse estudo . Ficaram claros para mim quais serão os propósitos do estudo , os procedimentos a serem realizados , seus riscos , as garantias de confidencialidade e de esclarecimentos permanentes . Ficou claro também que minha participação é isenta de despesas . Assim , concordo em participar do trabalho de pesquisa , exposto acima , confirmando a minha participação voluntária por meio da seleção do botão CONCORDO . Caso deseje , poderei imprimir ou salvar uma via deste teor deste TCLE ..'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
