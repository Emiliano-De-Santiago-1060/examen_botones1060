import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'MySingleChildScrollView',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tech stocks manage modest rally after lackluster US jobs report',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/compu.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Text(
                '''Update: Tech stocks have given up all gains since this post went up, with both the Nasdaq and the basket of software stocks we track in the red. From a slightly later perspective, concern about near full-employment and resulting rising interest rates appears to have won the in-market sentiment battle. The relationship between economic news and the value of technology stocks has been a fun puzzle in recent months.''',
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 12.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 700,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text(
                  '''We find ourselves, then, in the weird situation when a poor jobs report could indicate that the economy is stronger (closer to full employment) than anticipated, implying that wages and prices will continue to rise, inducing the Fed to raise rates. Which, as noted above, would mean that higher-risk assets would sell off and less risky assets would become more attractive. And yet tech stocks are a touch higher because, well, it appears that the markets are deciding that the poor-ish report will net out positive for tech shares, which have sold off sharply in recent weeks. Or that the lackluster jobs report will prove less Fed-provoking than a strong jobs report, in essence.''',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
