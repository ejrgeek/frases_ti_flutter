import 'package:flutter/material.dart';
import 'dart:math';

void main() {
	runApp(MaterialApp(
		debugShowCheckedModeBanner: false,
		home: Home(),
	));
}


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

	String _phrase = "Clique no botão para gerar frase";
	List<String> _phrases = [
				"1. A pressa é inimiga da conexão.",
				"2. Amigos, amigos, senhas à parte.",
				"3. Antes só, do que em chats aborrecidos.",
				"4. A arquivo dado não se olha o formato.",
				"5. Diga-me que chat freqüentas e te direi quem és.",
				"6. Para bom provedor uma senha basta.",
				"7. Não adianta chorar sobre arquivo deletado.",
				"8. Em briga de namorados virtuais não se mete o mouse.",
				"9. Em terra off-line, quem tem um 486 é rei.",
				"10. Hacker que ladra, não morde.",
				"11. Mais vale um arquivo no HD do que dois baixando.",
				"12. HD sujo se limpa em casa.",
				"13. Melhor prevenir do que formatar.",
				"14. O barato sai caro. E lento.",
				"15. Quando a esmola é demais, o santo desconfia que tem vírus anexado.",
				"16. Quando um não quer, dois não teclam.",
				"17. Quem ama um 486, Pentium 5 lhe parece.",
				"18. Quem clica seus males multiplica.",
				"19. Quem com vírus infecta, com vírus será infectado.",
				"20. Quem envia o que quer, recebe o que não quer.",
				"21. Quem não tem banda larga, caça com modem.",
				"22. Quem nunca errou, que aperte a primeira tecla.",
				"23. Quem semeia e-mails, colhe spams.",
				"24. Quem tem dedo vai a Roma.com",
				"25. Um é pouco, dois é bom, três é chat ou lista virtual.",
				"26. Vão-se os arquivos, ficam os back-ups.",
				"27. Diga-me que computador tens e direi quem és.",
				"28. Há dois tipos de pessoas na informática. Os que perderam o HD e os que ainda vão perder...",
				"29. Uma impressora disse para outra: Essa folha é sua ou é impressão minha?",
				"30. Aluno de informática não cola, faz backup.",
				"31. O problema do computador é o USB (Usuário SuperBurro).",
				"32. Na informática nada se perde, nada se cria. Tudo se copia...e depois se cola.",];

  void _changePhrase(){

		int _randonNumber = Random().nextInt(_phrases.length);
		setState(() {
			_phrase = _phrases[_randonNumber];
		});
	}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Frases T.I."),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
        ),
        body: Center(
            child: Container(
            padding: EdgeInsets.all(16),
            // decoration: BoxDecoration(
            // 	border: Border.all(width: 3, color: Colors.deepPurple)
            // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("images/frases_ti.png"),
                    Text(
                      '$_phrase',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18,
                          fontStyle: FontStyle.normal,
                          color: Colors.deepPurple
                          ),
                      ),
                      IconButton(
                        onPressed: (){
                          _changePhrase();
                        } ,
                        tooltip: "Nova Frase",
                        icon: Icon(Icons.autorenew),
                        color: Colors.deepPurple,
                        iconSize: 50,
                        ),
                      Text(
                        "Fonte das frases:\nhttp://tidicasetruques.blogspot.com/2011/07/frases-engracadas-em-relacao-ti.html",
                        style: TextStyle(color: Colors.deepPurple),
                        textAlign: TextAlign.center,
                        )
                  ],
                ),
          ),
        ),
    );
    }
}