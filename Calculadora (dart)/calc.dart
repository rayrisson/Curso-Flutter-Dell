class Calculadora{
  double soma({double operando1 = 0, double operando2 = 0}){
    return operando1 + operando2;
  }
  
  double sub({double operando1 = 0, double operando2 = 0}){
    return operando1 - operando2;
  }
  
  double mult({double operando1 = 0, double operando2 = 0}){
    return operando1 * operando2;
  }
  
  double div({double operando1 = 0, double operando2 = 0}){
    return operando1 / operando2;
  }
}

void main() {
  Calculadora calculadora = Calculadora();

  print(calculadora.soma(operando1: 5, operando2: 7));
  print(calculadora.sub(operando1: 5, operando2: 7));
  print(calculadora.mult(operando1: 5, operando2: 7));
  print(calculadora.div(operando1: 35, operando2: 7));
}