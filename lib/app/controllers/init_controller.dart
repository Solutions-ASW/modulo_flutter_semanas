import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_semanas/app/models/params_model.dart';
import 'contrainst.dart';

class InitController extends Disposable {
  void getYield(ParamsModel investiment) {
    investiment.investimentPeriod = 12;
    investiment.investimentType = INVESTMENT.poupanca;
    investiment.investmentValue = 10;

    double? porcent = getPorcent[investiment.investimentType] ?? 0;

    Map<String, double> months = {
      "jan": 0,
      "fev": 0,
      "mar": 0,
      "abr": 0,
      "mai": 0,
      "jun": 0,
      "jul": 0,
      "ago": 0,
      "set": 0,
      "out": 0,
      "nov": 0,
      "dez": 0
    };

    double acumulado = investiment.investmentValue ?? 0;

    months.forEach((key, value) {
      acumulado += (porcent * acumulado);
      months[key] = acumulado;
    });

    var teste = months;
  }

  @override
  void dispose() {}
}
