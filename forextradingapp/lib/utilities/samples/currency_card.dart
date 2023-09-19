import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forextradingapp/pages/detail_pages/currency_detail_page.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';

import '../enums/forex_pairs_enum.dart';

class CurrencyCard extends StatelessWidget {
  CurrencyCard({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: CupertinoButton(
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => CurrencyDetailPage(
                forexPair: ForexPairsEnum.values[index],
              ),
            ),
          );
        },
        child: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(3),
                      ),
                      child: ColoredBox(
                        color: Colors.grey,
                        child: SvgPicture.network(
                          "https://s3-symbol-logo.tradingview.com/country/${ForexPairsEnum.values[index].name[0]}${ForexPairsEnum.values[index].name[1]}.svg",
                          height: 24,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(3),
                      ),
                      child: ColoredBox(
                        color: Colors.grey,
                        child: SvgPicture.network(
                          "https://s3-symbol-logo.tradingview.com/country/${ForexPairsEnum.values[index].name[3]}${ForexPairsEnum.values[index].name[4]}.svg",
                          height: 20,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Align(
                alignment: Alignment.centerLeft,
                child: TitleText(
                  text: ForexPairsEnum.values[index].name,
                ))
          ],
        ),
      ),
    );
  }
}
