import 'package:flutter/material.dart';

extension FormatCpfExtension on String {
  String formatCpf() {
    String allCases;

    if (this.length == 11) {
      final firstCase = substring(0, 3);
      final secCase = substring(3, 6);
      final thirdCase = substring(6, 9);
      final fourCase = substring(9, 11);

      allCases = '$firstCase.$secCase.$thirdCase-$fourCase';
    } else if (this.length == 14) {
      final firstCase = substring(0, 2);
      final secCase = substring(2, 5);
      final thirdCase = substring(5, 8);
      final fourCase = substring(8, 12);
      final fifthCase = substring(12, 14);

      allCases = '$firstCase.$secCase.$thirdCase/$fourCase-$fifthCase';
    }

    return allCases;
  }
}

class FormatedCpf extends StatefulWidget {
  @override
  _FormatedCpfState createState() => _FormatedCpfState();
}

class _FormatedCpfState extends State<FormatedCpf> {
  String meuCpf = '12345678912345';

  @override
  Widget build(BuildContext context) {
    if (meuCpf != null) {
      return Text(
        meuCpf.formatCpf(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      );
    } else
      return Text('CPF invalido');
  }
}
