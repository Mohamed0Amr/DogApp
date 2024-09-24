import 'package:flutter/material.dart';

class TextFieldMe extends StatelessWidget {
  final Function()? onTap;
  final String label;
  final Icon icon;
  const TextFieldMe({super.key, this.onTap, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          width: 320,
          child: TextFormField(
            onTap: onTap,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              border:  OutlineInputBorder(),
              suffixIcon: icon,
              label: Text(label),
            ),
          ),
        ),
      ),
    );
  }
}
