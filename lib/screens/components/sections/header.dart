import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // Obs:  Container,Row,Column são widget nativos do flutter
    return Container(
      decoration: BoxDecoration(
        //A propriedade decoration: BoxDecoration serve para adicionar estilos visuais ao contêiner, como cor de fundo, borda, sombra e arredondamento dos cantos.
        gradient: LinearGradient(
          //A propriedade gradient: LinearGradient dentro do BoxDecoration serve para aplicar um gradiente de cores, criando uma transição suave entre duas ou mais cores em uma direção específica (horizontal, vertical, diagonal, etc.). Ela é importante para criar efeitos visuais mais atraentes e dinâmicos no fundo de um contêiner.
          begin: Alignment.topCenter, // Começo
          end: Alignment.bottomCenter, // Fim
          colors: <Color>[
            // Cores
            Color.fromRGBO(103, 99, 234, 1.0),
            Color.fromRGBO(155, 105, 254, 1.0),
            Color.fromRGBO(195, 107, 255, 1.0),
          ],
        ),
        borderRadius: BorderRadius.vertical(
          //A propriedade borderRadius: BorderRadius.vertical no BoxDecoration serve para arredondar os cantos superiores e inferiores de um contêiner de forma diferente. Ela permite definir raios de curvatura específicos para os cantos superior e inferior, proporcionando um estilo visual mais personaliza
          bottom: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        // Padding serve para  define o espaçamento interno do widget,garantindo um espaçamento uniforme ao redor do conteúdo.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Espaça igualmente os filhos, colocando o primeiro no início, o último no final e os demais com espaçamento igual entre eles.
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Alinha os filhos no início do eixo transversal (à esquerda, no caso de orientação de leitura da esquerda para a direita).
              children: [
                //    Text(
                //      "\$1000,00",
                //      style: TextStyle(
                // TextSyte serve para estilizar a font
                //            fontSize: 28, // fontSize serve para aumentar a fonte
                //         fontWeight: FontWeight
                //               .bold // fontWeight serve para definir a espessura da fonte.
                //          ),
                //   ),
                Text.rich(
                  // O Text.rich serve para exibir texto com diferentes estilos em uma única linha ou bloco, permitindo aplicar estilos distintos a partes do texto
                  TextSpan(
                      text: '\$',
                      style: TextStyle(fontSize: 16), // tamanho da fonte,
                      children: [
                        TextSpan(
                          text: '1000,00',
                          style: TextStyle(
                            fontSize: 28, // tamanho da fonte
                            fontWeight: FontWeight
                                .bold, // fontWeight serve para definir a espessura da fonte
                          ),
                        )
                      ]),
                ),
                Text("Balanço disponivel",
                    style: TextStyle(
                        fontSize: 16) // fontSize serve para aumentar a font.
                    )
              ],
            ),
            Icon(
              Icons.account_circle, // Tipo do icone
              size: 42, // Tamanho do Icone
            ),
          ],
        ),
      ),
    );
  }
}
