import 'package:flutter/material.dart';
import '../CustomUi/faq_card.dart';
import '../CustomUi/footer.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          FaqCard(
            quesno: 'Q.1',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.2',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.3',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.4',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.5',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.6',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.7',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.8',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.9',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.10',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.11',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.12',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.13',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.14',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.15',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.16',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.17',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.18',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.19',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          FaqCard(
            quesno: 'Q.20',
            ques: 'What we do ?',
            ansno: 'Ans',
            ans: 'we will building websites, apps',
          ),
          const SizedBox(height: 10),
          const Footer(),
        ],
      ),
    );
  }
}
