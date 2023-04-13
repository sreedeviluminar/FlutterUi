import 'package:assignment_ui/invoice_app-ui/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InvoiceDetailsSection extends StatelessWidget {
  const InvoiceDetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Select Invoice Date',
            style: TextStyle(color: Color(0xff4f86dc)),
          ),
          SizedBox(height: 15),
          CustomInputField(hinttext: 'Eg : December 12,2022'),
          SizedBox(height: 15),
          Text(
            'Enter the amount',
            style: TextStyle(color: Color(0xff4f86dc)),
          ),
          SizedBox(height: 15),
          CustomInputField(hinttext: 'Eg : 2500'),
        ],
      ),
    );
  }
}
