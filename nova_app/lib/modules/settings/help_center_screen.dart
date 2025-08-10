import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/models/help_center.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';
import 'package:nova_app/shared/widgets/custom_app_bar.dart';
import 'package:nova_app/shared/widgets/custom_expansion_tile.dart';

class HelpCenterScreen extends StatefulWidget {
  HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  bool _isExpansion = false;
   List<Question> questions = <Question> [
Question(question: 'How do I create an account?', answer: 'To create an account, click on the "Sign Up" or "Register" button on the homepage. Fill in your details, such as your name, email address, and password, and click "Register."'),
     Question(question: 'How can I reset my password?', answer: 'To reset your password, go to the login page and click on the "Forgot Password" link. Enter your email address, and we will send you a password reset link.'),
     Question(question: 'What is the delivery time for orders?',answer: 'Delivery times may vary depending on your location and the product\'s availability. Typically, orders are delivered within [X] business days. You can check the estimated delivery date during checkout.'),
Question(question: 'Can I change or cancel my order?', answer: 'You may be able to change or cancel your order if it has not yet been shipped. Contact our customer support team as soon as possible to request changes or cancellations.'),
     Question(question: 'Unsubscribe from Emails?', answer: 'Manage email preferences.'),
     Question(question: 'Why leave a Review?', answer: 'Share your product feedback'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Help Center'),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
         return CustomExpansionTile(
              leading: Icons.question_answer_outlined,
              trailing: _isExpansion ? Icons.arrow_drop_up_rounded : Icons.arrow_drop_down_rounded,
              title: questions[index].question,
              subTitle: _isExpansion ? null :Text('Click to read the answer!',style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w300,
              )),

              content: questions[index].answer,
              onPress: (bool value){
                setState(() {
                  _isExpansion=value;
                });
              });
        },


      ),
    );
  }
}
