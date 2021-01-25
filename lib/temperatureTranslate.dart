import 'package:flutter/material.dart';

class TemperatureTranslate extends StatefulWidget {
  @override
  _TemperatureTranslateState createState() => _TemperatureTranslateState();
}

class _TemperatureTranslateState extends State<TemperatureTranslate> {
  TextEditingController textDegreeC;
  TextEditingController textDegreeF;
  double temp;
  double result;

  @override
  void initState() {
    textDegreeC = TextEditingController();
    textDegreeF = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textDegreeC.dispose();
    textDegreeF.dispose();
    super.dispose();
  }


  void onChangeCtoF(String value) {
    if(textDegreeC.text == ''){
      textDegreeF.text = '';
    }
    temp = double.parse(value);
    if (temp != null) {
      result = (temp * 9 / 5) + 32;
      textDegreeF.text = result.toStringAsFixed(1);
    }
  }

  void onChangeFtoC(String value) {
    if(textDegreeF.text == '' ) {
      textDegreeC.text ='';
    }
    temp = double.parse(value);
    if (temp != null) {
      result = (temp - 32) * 5 / 9;
      textDegreeC.text = result.toStringAsFixed(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          TextField(
            controller: textDegreeC,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'C temperature'),
            onChanged: onChangeCtoF,
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: textDegreeF,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'F temperature'),
            onChanged: onChangeFtoC,
          ),
          SizedBox(
            height: 50,
          ),
          // RaisedButton(
          //   onPressed: (){
          //     if(textDegreeC.text != ''){
          //       temp = double.parse(textDegreeC.text);
          //       result = temp * 9 / 5 + 32;
          //       textDegreeF.text = result.toStringAsFixed(1);
          //     }else if(textDegreeF.text != ''){
          //       temp = double.parse(textDegreeF.text);
          //       result = (temp - 32) * 5 / 9;
          //       textDegreeC.text = result.toStringAsFixed(1);
          //     }
          //     FocusScope.of(context).unfocus();
          //   },
          //   child: Text('translate'),
          // )
        ],
      ),
    );
  }
}
