import 'package:flutter/material.dart';

import '../stylescreen/stylescreen.dart';

class AppUI extends StatefulWidget {
  const AppUI({super.key});

  @override
  State<AppUI> createState() => _AppUIState();
}

class _AppUIState extends State<AppUI> {
  /// map a form ar data gulo ase store hbe
  Map <String, double> FormValue={'Num1':0,'Num2':0};
  double SUM=0;
  /// value update hoile seta reiceve krbe
  /// setstate use kre screen refresh kra hoy,jeno previous results share na hoy

  MyInputOnChange(Inputkey,InputValue){
    setState(() {
      FormValue.update(Inputkey, (value) => double.parse(InputValue));
    });
  }
  AddAllNumber(){
    setState(() {
      SUM = FormValue['Num1']! + FormValue['Num2']! + FormValue['Num3']!;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Sum App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(SUM.toString(),style: AppTextStyle(),),
            SizedBox(
              height: 10,
            ),
            TextFormField(onChanged: (value){
              ///myinputchanfe use kra hoilo,value change hoile seta num1 a save hbe
              MyInputOnChange('Num1', value);
            },
              /// value ,num1 a save/set hbe


              decoration: AppInputStyle('First Number'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(onChanged: (value){
              ///myinputchanfe use kra hoilo,value change hoile seta num2 a save hbe
              MyInputOnChange('Num2', value);
            },
              /// value ,num1 a save/set hbe


              decoration: AppInputStyle('Second Number'),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: (){
                    AddAllNumber();
                  }, child:Text('Add',style: AppTextStyle(),)),
            )
          ],
        ),
      ),
    );
  }
}
