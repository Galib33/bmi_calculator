import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  String choosenValue = "10 Messi";
  List<String> footballers=["10 Messi","7 Ronaldo"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Center(
            child: DropdownButton<String>(
              //! ashagida yazdigimiz kod bir nov yuxaridaki footballers listini gezir ve onun element sayina gore dropdownmenuItem yaradir ve onun child-ina ve value-sine footballersin elementlerini verir
          items: footballers.map((String element) => DropdownMenuItem(value: element, child: Text(element))).toList(), 
          value: choosenValue,
          onChanged: (value) {
            setState(() {
              choosenValue = value!;
            });
          },
        )));
  }
}
