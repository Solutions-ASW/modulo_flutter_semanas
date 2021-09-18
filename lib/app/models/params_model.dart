// ignore_for_file: prefer_collection_literals
import 'package:flutter_semanas/app/controllers/contrainst.dart';

class ParamsModel {
  double? investmentValue;
  double? investimentPeriod;
  INVESTMENT? investimentType;

  ParamsModel(
      {this.investmentValue, this.investimentType, this.investimentPeriod});

  ParamsModel.fromJson(Map<String, dynamic> json) {
    investmentValue = json['investmentValue'];
    investimentType = json['investimentType'];
    investimentType = json['investimentPeriod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['investmentValue'] = investmentValue;
    data['investimentType'] = investimentType;
    data['investimentPeriod'] = investimentPeriod;
    return data;
  }
}
