import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;
  void calculate(){
    double heightcm=double.parse(height.text);
    double weightd=double.parse(height.text);
    double heightm=heightcm/100;
    double heightsquare=heightm*heightm;
    result=weightd/heightsquare;
    double res=result;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey,
     appBar: AppBar(
       title: Center(child: Text("BMI Calculator"),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller:height,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.pinkAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              hintText: 'Height'
            ),
          ),
          SizedBox(
            height:10,
          ),
          TextField(controller: weight,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pinkAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                hintText: 'Weight'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.blue) ),onPressed: (){calculate();},child: Text("calculate",
          style: TextStyle(color: Colors.white,fontSize: 20),
          )
              ),
      SizedBox(
        height: 15,
      ),
          SizedBox(
            height: 15,
          ),
          Text(result==null?"Enter value":"${result.toStringAsFixed(2)}",
          ),
    ],
      ),
    );
  }
}
