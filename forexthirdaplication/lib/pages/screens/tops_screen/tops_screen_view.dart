import 'package:flutter/material.dart';
import 'package:forexthirdaplication/utils/consts/constant_colors.dart';
import 'package:forexthirdaplication/utils/consts/constant_text.dart';
import 'package:intl/intl.dart';

import '../../detail_pages/news_detail_page.dart';

class TopsPageView extends StatefulWidget {
  const TopsPageView({Key? key}) : super(key: key);

  @override
  State<TopsPageView> createState() => _TopsPageViewState();
}

DateTime now = DateTime.now();

// Define the desired format
DateFormat dateFormat = DateFormat('yMMMMd');
String formattedDate = dateFormat.format(now);

class _TopsPageViewState extends State<TopsPageView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      children: [
        const SizedBox(
          height: 20,
        ),
        const RatingTitlesText(text: 'TOP 5 RICHEST PEOPLE OF THE WORLD'),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 500,
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/bernard.jpg'),
                              radius: 25,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RatingTitleText(text: '2. Bernard Arnault'),
                            const SizedBox(
                              height: 5,
                            ),
                            SimpleText(text: '\$231.4 B'),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: secondColor,
                                  borderRadius: BorderRadius.circular(8)),
                              height: 115,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/elon_musk.jpg'),
                            radius: 25,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ArticleTitleText(text: '1. Elon Musk'),
                          const SizedBox(
                            height: 5,
                          ),
                          SimpleText(text: '\$240.7 B'),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: secondColor,
                                borderRadius: BorderRadius.circular(8)),
                            height: 160,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Expanded(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 90,
                            ),
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/jeff_bezos.jpg'),
                              radius: 25,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ArticleTitleText(text: '3. Jeff Bezos'),
                            const SizedBox(
                              height: 5,
                            ),
                            SimpleText(text: '\$154.9 B'),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: secondColor,
                                  borderRadius: BorderRadius.circular(8)),
                              height: 70,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFECECEC),
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: ArticleTitleText(text: '4.'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/larrye.jpg'),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: ArticleTitleText(text: 'Larry Elison')),
                      Expanded(
                          child: Align(
                              alignment: Alignment.center,
                              child: SimpleText(text: '\$146.1 B')))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFECECEC),
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: ArticleTitleText(text: '5.'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/bill.jpg'),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: ArticleTitleText(text: 'Bill Gates')),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: SimpleText(text: '\$119.3 B'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const RatingTitlesText(text: 'FIRST PLACE ABOUT'),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 380,
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 230,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: const Image(
                      image: AssetImage('assets/elon_musk.jpg'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: ArticleTitleText(
                    text: 'Elon Musk',
                  )),
              const SizedBox(
                height: 5,
              ),
              const FirstPlaceText(
                text:
                    'Elon Musk is a South African-born American entrepreneur, investor, and engineer. He is the founder, CEO, and lead designer of SpaceX; co-founder, CEO, and product architect of Tesla, Inc.; and co-founder and CEO of Neuralink. He is also the founder of The Boring Company and co-founder of OpenAI. Musk has been involved in several business ventures throughout his career, including Zip2, PayPal, and SolarCity. He is known for his ambitious goals and innovative ideas in the fields of space exploration, renewable energy, transportation, and artificial intelligence',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RatingTitlesText(
            text: 'TOP 5 CURRENCIES OF THE WORLD ($formattedDate)'),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFECECEC),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ArticleTitleText(text: '1.'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/usadollar.jpg'),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: ArticleTitleText(text: 'US dollar')),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFECECEC),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ArticleTitleText(text: '2.'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/euro.jpg'),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: ArticleTitleText(text: 'EURO'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFECECEC),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ArticleTitleText(text: '3.'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/yen.jpg'),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: ArticleTitleText(text: 'Japanese yen'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFECECEC),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ArticleTitleText(text: '4.'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/pound.jpg'),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: ArticleTitleText(text: ' British pound sterling')),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFECECEC),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ArticleTitleText(text: '5.'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/austrdollar.jpg'),
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: ArticleTitleText(text: 'Australian dollar')),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const FirstPlaceText(
          text:
          'Top 5 currencies that are predominantly used for international transactions are the US dollar and the euro, which account for more than 70% of all SWIFT payments worldwide, according to a report by SWIFT for September 2023 1. In addition to these, the Japanese yen, the British pound sterling, and the Australian dollar are also popular currencies for international transactions',
        ),
        const SizedBox(
          height: 125,
        ),
      ],
    );
  }
}
