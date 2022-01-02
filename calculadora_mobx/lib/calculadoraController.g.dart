// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadoraController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraController on CalculadoraControllerBase, Store {
  final _$primeiroNumeroAtom =
      Atom(name: 'CalculadoraControllerBase.primeiroNumero');

  @override
  int? get primeiroNumero {
    _$primeiroNumeroAtom.reportRead();
    return super.primeiroNumero;
  }

  @override
  set primeiroNumero(int? value) {
    _$primeiroNumeroAtom.reportWrite(value, super.primeiroNumero, () {
      super.primeiroNumero = value;
    });
  }

  final _$segundoNumeroAtom =
      Atom(name: 'CalculadoraControllerBase.segundoNumero');

  @override
  int? get segundoNumero {
    _$segundoNumeroAtom.reportRead();
    return super.segundoNumero;
  }

  @override
  set segundoNumero(int? value) {
    _$segundoNumeroAtom.reportWrite(value, super.segundoNumero, () {
      super.segundoNumero = value;
    });
  }

  final _$operacaoEscolhidaAtom =
      Atom(name: 'CalculadoraControllerBase.operacaoEscolhida');

  @override
  String? get operacaoEscolhida {
    _$operacaoEscolhidaAtom.reportRead();
    return super.operacaoEscolhida;
  }

  @override
  set operacaoEscolhida(String? value) {
    _$operacaoEscolhidaAtom.reportWrite(value, super.operacaoEscolhida, () {
      super.operacaoEscolhida = value;
    });
  }

  final _$resultadoAtom = Atom(name: 'CalculadoraControllerBase.resultado');

  @override
  double? get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double? value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$CalculadoraControllerBaseActionController =
      ActionController(name: 'CalculadoraControllerBase');

  @override
  void mudarPrimeiroNumero(int numero) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.mudarPrimeiroNumero');
    try {
      return super.mudarPrimeiroNumero(numero);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mudarSegundoNumero(int numero) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.mudarSegundoNumero');
    try {
      return super.mudarSegundoNumero(numero);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mudarOperacao(String operacao) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.mudarOperacao');
    try {
      return super.mudarOperacao(operacao);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void zerarTudo() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.zerarTudo');
    try {
      return super.zerarTudo();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void gerarResultado() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.gerarResultado');
    try {
      return super.gerarResultado();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
primeiroNumero: ${primeiroNumero},
segundoNumero: ${segundoNumero},
operacaoEscolhida: ${operacaoEscolhida},
resultado: ${resultado}
    ''';
  }
}
