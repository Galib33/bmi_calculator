import 'package:flutter/material.dart';

class DropDownContainer extends StatelessWidget {
  final String? dropValue;
  final List<String> listKg;
  final Function(String?) onChanged;
  
  
  const DropDownContainer({
    super.key, required this.listKg, required this.dropValue, required this.onChanged,
  });

  

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 15),
      width: MediaQuery.of(context).size.width / 3.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: DropdownButton<String>(
          hint: const Text("Choose",style: TextStyle(fontSize: 15,color: Colors.black),),
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
          underline: Container(),
          items: listKg
              .map((String element) =>
                  DropdownMenuItem(value: element, child: Text(element)))
              .toList(),
          value: dropValue,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
