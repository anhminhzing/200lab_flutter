import 'package:flutter/material.dart';

class TemperatureTranslate extends StatefulWidget {
  @override
  _TemperatureTranslateState createState() => _TemperatureTranslateState();
}

class _TemperatureTranslateState extends State<TemperatureTranslate> {
  TextEditingController textDegreeC;
  TextEditingController textDegreeF;

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
    int temp = int.parse(value);
    int result;
    if (temp != null) {
      result = ((temp * 9 / 5) + 32).round();
      textDegreeF.text = result.toString();
    }
  }

  void onChangeFtoC(String value) {
    if(textDegreeF.text == '' ) {
      textDegreeC.text ='';
    }
    int temp = int.parse(value);
    int result;
    if (temp != null) {
      result = ((temp - 32) * 5 / 9).round();
      textDegreeC.text = result.toString();
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
          RaisedButton(
            onPressed: (){
              int result;
              if(textDegreeC.text != ''){
                int tempC = int.parse(textDegreeC.text);
                result = (tempC * 9 / 5 + 32).round();
                textDegreeF.text = result.toString();
              }else if(textDegreeF.text != ''){
                int tempF = int.parse(textDegreeF.text);
                result = ((tempF - 32) * 5 / 9).round();
                textDegreeC.text = result.toString();
              }
              FocusScope.of(context).unfocus();
            },
            child: Text('translate'),
          )
        ],
      ),
    );
  }
}
