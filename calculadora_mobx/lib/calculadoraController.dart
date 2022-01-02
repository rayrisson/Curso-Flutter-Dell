import 'package:mobx/mobx.dart';

part 'calculadoraController.g.dart';

class CalculadoraController = CalculadoraControllerBase with _$CalculadoraController;

abstract class CalculadoraControllerBase with Store{
  @observable
  int ?primeiroNumero;
  @observable
  int ?segundoNumero;
  @observable
  String ?operacaoEscolhida;
  @observable
  double ?resultado;

  @action
  void mudarPrimeiroNumero(int numero){
    primeiroNumero = numero;
  }

  @action
  void mudarSegundoNumero(int numero){
    segundoNumero = numero;
  }

  @action
  void mudarOperacao(String operacao){
    operacaoEscolhida = operacao;
  }

  @action
  void zerarTudo(){
    primeiroNumero = null;
    segundoNumero = null;
    operacaoEscolhida = null;
    resultado = null;
  }

  @action
  void gerarResultado(){
    if(todasOpcoesForamEscolhidas()) {
      if (operacaoEscolhida == '+') {
        resultado = (primeiroNumero! + segundoNumero!).toDouble();
      } else if (operacaoEscolhida == '-') {
        resultado = (primeiroNumero! - segundoNumero!).toDouble();
      } else if (operacaoEscolhida == '*') {
        resultado = (primeiroNumero! * segundoNumero!).toDouble();
      } else if (operacaoEscolhida == '/') {
        resultado = (primeiroNumero! / segundoNumero!).toDouble();
      } else if (operacaoEscolhida == '%') {
        resultado = (primeiroNumero! % segundoNumero!).toDouble();
      }
    }
  }

  bool todasOpcoesForamEscolhidas() {
    return primeiroNumero != null &&
        segundoNumero != null &&
        operacaoEscolhida != null;
  }
}