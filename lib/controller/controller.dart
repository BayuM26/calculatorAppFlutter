import 'package:math_expressions/math_expressions.dart';

class Controller {
  
  void actionButton(String text, controllerText){
    if (controllerText.text == '0' || controllerText.text == '0.0') {
      controllerText.text = text;

    } else {
      controllerText.text += text;

    }
  }

  void clearButton(controllerText, subControllerText){
    controllerText.clear();
    subControllerText.clear();
    controllerText.text = '0';
  }

  void deleteButton(controllerText){
    String text = controllerText.text;
    var delete = text.substring(0, text.length-1);

    controllerText.text = delete.isEmpty? '0' : delete.toString();
  }

  void hasil(controllerText, subControllerText){
    String text = controllerText.text;
    var replaceMultiplication = text.replaceAll("x", '*'); //mengganti x menjadi * di dlam string
    var replacePercent = replaceMultiplication.replaceAll("%", '/100'); //mengganti % menjadi /100 di dlam string
    var replaceComa = replacePercent.replaceAll(",", '.'); //mengganti % menjadi /100 di dlam string
    Expression expression = Parser().parse(replaceComa); //mengubah string menjadi expresi matematika menggunakna librari 
    
    // perhitungan menggunakan librari 
    ContextModel contextModel = ContextModel();
    double hasil = expression.evaluate(EvaluationType.REAL, contextModel);

    // cek agar nilai yang di kembalikan tidak semuanya double
    controllerText.text = hasil > hasil.toInt()? hasil.toString() : hasil.toInt().toString();
    
    subControllerText.text = text;
  }
}