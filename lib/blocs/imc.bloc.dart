import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);
    if (imc < 18.6) {
      result = "Você está abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      result = "Você está com o peso ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9) {
      result = "Você está acima do peso (${imc.toStringAsPrecision(2)})";
    }
  }
}
