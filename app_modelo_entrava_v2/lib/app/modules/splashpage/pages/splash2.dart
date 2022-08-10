import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
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
                    child: ListView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12,
                              ),
                              child: Center(
                                child: Text(
                                  'DESCRIÇÃO DE PESQUISA',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            top: 12,
                            right: 12,
                            bottom: 12,
                          ),
                          child: Container(
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const [
                                  TextSpan(
                                      style: TextStyle(fontSize: 16),
                                      text:
                                          'O propósito desta pesquisa é desenvolver um aplicativo (comunicare) para auxiliar'),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'na reabilitação da fala de participantes com apraxia verbal. O aplicativo tem como objetivo o desenvolvimento das atividades propostas',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'em consultório pelo terapeuta fonoaudiólogo',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        '\n\nSua Participação é voluntária e isenta de qualquer custo/remuneração, receberá todos os esclarecimentos necessários',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'antes,durante e após a finalização da pesquisa, e caso aceite participar, será garantido',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'o sigilo sobre sua identidade.Cabe dizer que estas informações guardadas',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'de forma segura, e os pesquisadores assumem o compromisso ético e legal pela confidencialidade',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'dos dados envolvidos, os quais serão analisados de forma anônima ,assegurando privacidade e confidencialidade.Você terá',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'plena e total liberdade para desistir do estudo a qualquer momento, retirar seu consetimento ou interromper sua participação',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'sem nenhum prejuízo, penalidade ou constragimento para você.',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        '\n\nA coleta de dados será realizada por meio de gravações acusticas da sua fala quando você pronuncia vogais,palavras e frases simples.',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'sua fala correspondente será vinculada a um banco de dados de português, mas não haverá exposição do português brasileiro .  Como sabemos que a língua sofre variações regionais, antes das portuguesas será solicitada que você selecione a parte da vida Assim a comparação entre as falas respeitadas como variações linguísticas regionais.  É para este procedimento que você está convidado a participar .  Todos os esforços de todos os participantes devem ser suportados ao fim de um risco que possa ocorrer.  Espera - se com esta pesquisa entender possíveis benefícios diretos o recebimento dos resultados de todas as aparências com as fonéticas que serão feitas.  Os benefícios relacionados com a utilização dos resultados da pesquisa para possibilitar o planejamento de ações exclusivas para a terapia da fala, e assim contribuir para a geração de maior visibilidade para um público-alvo em seu âmbito.  Em qualquer etapa do estudo, você terá acesso aos possíveis para eventuais dúvidas',
                                  ),
                                  TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    text:
                                        'Se você concordar em participar do estudo , seu nome e identidade serão mantidos em sigilo . A menos que requerido por lei ou por sua solicitação , somente o pesquisador , a equipe estudo , Comitê de Ética independente e inspetores de agências reguladoras do governo ( quando necessário ) terão acesso a suas informações para verificar as informações do estudo .',
                                  ),
                                ],
                              ),
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
