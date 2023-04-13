import 'package:assignment_ui/invoice_app-ui/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InvoiceNumberFieldSection extends StatelessWidget {
  const InvoiceNumberFieldSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Enter the invoice number',
            style: TextStyle(color: Color(0xff4f86dc)),
          ),
          SizedBox(height: 15),
          CustomInputField(hinttext: 'Eg : 12345678'),
        ],
      ),
    );
  }
}
