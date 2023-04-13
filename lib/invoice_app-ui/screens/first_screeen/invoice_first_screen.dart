// ignore_for_file: prefer_const_constructors
import 'package:assignment_ui/invoice_app-ui/screens/first_screeen/invoice_number_page/invoice_details_Section.dart';
import 'package:assignment_ui/invoice_app-ui/screens/first_screeen/invoice_number_page/invoice_number_fiels_section.dart';
import 'package:assignment_ui/invoice_app-ui/screens/main_screen/invoice_main_screen.dart';
import 'package:assignment_ui/invoice_app-ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class InvoiceFirstScreen extends StatefulWidget {
  static String id = 'Invoice_First_Screen';

  const InvoiceFirstScreen({super.key});

  @override
  State<InvoiceFirstScreen> createState() => _InvoiceFirstScreenState();
}

class _InvoiceFirstScreenState extends State<InvoiceFirstScreen> {
  bool _isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffecddd6),
                  Color(0xffe0e2f1),
                  Color(0xffebf0f4),
                  Color(0xffe0e2f1),
                  Color(0xffecddd6),
                ],
              ),
              image: DecorationImage(
                  image: AssetImage('assets/images/invoice/invoicebg.png'),
                  scale: .6)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    padding:
                        const EdgeInsets.only(left: 5, top: 2.5, bottom: 2.5),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                _isFirst
                    ? InvoiceNumberFieldSection()
                    : InvoiceDetailsSection(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      color: Colors.white,
                      icon: Icons.arrow_back_ios,
                      label: 'Back',
                      labelColor: Color(0xff4f86dc),
                      onPressed: () {
                        setState(() {
                          _isFirst = true;
                        });
                      },
                    ),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          height: 45,
                          child: CustomButton(
                            icon: _isFirst
                                ? Icons.arrow_back_ios
                                : Icons.check_circle_outline_outlined,
                            label: 'Next',
                            labelColor: Colors.white,
                            onPressed: () {
                              _isFirst
                                  ? setState(() {
                                      _isFirst = false;
                                    })
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            InvoiceMainScreen(),
                                      ));
                            },
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
