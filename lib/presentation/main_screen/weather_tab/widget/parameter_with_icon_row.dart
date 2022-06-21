import 'package:flutter/material.dart';

class ParameterWithIconRow extends StatelessWidget {
  const ParameterWithIconRow({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 21,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
