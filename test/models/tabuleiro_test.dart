import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  test('Ganhar jogo', (){

    Tabuleiro tabuleiro = Tabuleiro(
      linhas: 2,
      colunas: 2,
      qtdBombas: 0
    );

    tabuleiro.campos[0].minar();
    tabuleiro.campos[3].minar();

    tabuleiro.campos[0].alterarMarcacao();
    tabuleiro.campos[1].abrir();
    tabuleiro.campos[2].abrir();
    tabuleiro.campos[3].alterarMarcacao();


    expect(tabuleiro.resolvido, isTrue);
  });
}