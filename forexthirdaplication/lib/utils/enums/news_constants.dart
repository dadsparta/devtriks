import '../models/news_model.dart';

class CommunityConstants {
  static const List<NewsModel> communities = [
    NewsModel(
        image:
        'https://phantom-marca.unidadeditorial.es/5263e9249710ee51e14b0ae6f6fd743c/resize/660/f/webp/assets/multimedia/imagenes/2022/03/05/16464909295961.jpg',
        title: "Day Trading",
        description:
        "Day traders aim to profit from short-term price movements within a single trading day. They make multiple trades throughout the day and often use technical analysis to identify entry and exit points. Challenges include: high-pressure environment with quick decision-making,Constant monitoring of the markets, leading to stress and burnout, Transaction costs can eat into profits due to frequent trading.",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://d1e00ek4ebabms.cloudfront.net/production/5b6adf89-45c7-46ea-a466-fe8616f32b16.jpg',
        title: "Swing Trading",
        description:
        "Swing traders hold positions for several days to weeks, aiming to capture larger price movements. They rely on technical and fundamental analysis to identify potential trends. Challenges include: balancing patience with timing, as swing trades require waiting for the right entry and exit points, holding positions overnight exposes traders to overnight risk, such as market gaps.",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://penntoday.upenn.edu/sites/default/files/2023-07/biotech-commons-space.jpg',
        title: "Trend Following",
        description:
        "Trend followers identify and ride established market trends. They use technical indicators to confirm trends and determine entry and exit points. Challenges include: false signals and whipsaws can lead to losses if trends reverse unexpectedly, missed opportunities during sideways or range-bound markets.",
        date: "9.20.2023" ),
    NewsModel(
        image:
        'https://www.simplilearn.com/ice9/free_resources_article_thumb/cryptocurrency_explained.jpg',
        title: "Arbitrage",
        description:
        """Arbitrageurs exploit price discrepancies of the same asset across different markets or exchanges. They buy low in one market and sell high in another to lock in risk-free profits. Challenges include:

- Fast execution is crucial, as price discrepancies can close rapidly.
- Transaction costs and fees can reduce or eliminate potential profits.
- Arbitrage opportunities are becoming scarcer due to advanced trading technology.""",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://cdn2.etrade.net/1/21072818500.0/aempros/content/dam/etrade/retail/en_US/images/what-we-offer/investment-choices/cryptocurrency-coins.jpg',
        title: "Algorithmic Trading",
        description:
        """Algorithmic traders use computer programs to execute trades based on predefined rules and strategies. Challenges include:

- Developing and maintaining effective algorithms requires programming skills and constant refinement.
- Technical glitches or "flash crashes" can lead to significant losses.
- Over-optimization can result in algorithms that perform well historically but fail in real-time markets.""",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/newscms/2018_33/2363946/180315-cryptocurrency-al-1338.jpg',
        title: "Mean Reversion",
        description:
        """Mean reversion traders assume that prices will revert to their historical average over time. They look for overbought or oversold conditions to enter trades. Challenges include:

- Identifying the true mean in volatile markets can be difficult.
- Prices can stay in overbought or oversold territories for extended periods.""",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://c.files.bbci.co.uk/1D8C/production/_123646570_gettyimages-945312872.jpg',
        title: "Scalping",
        description:
        """Scalpers make numerous quick trades to profit from small price movements. They aim to capture tiny price differentials. Challenges include:

- High-frequency trading requires advanced technology and low-latency connections.
- Transaction costs can significantly impact profitability.
- Scalping can be stressful and emotionally taxing.""",
        date: "9.20.2023"),

  ];
}


class NewsList {
  static const List<NewsMList> stats = [
    NewsMList(
      imageUrl:
      'https://www.reuters.com/resizer/is36ZBobq6BmcvKhK6E-AE2p3-Q=/480x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/ACGL75MK6NPCNOFOX2DI3GOFJY.jpg',
      title: "Binance to sell Russia business for undisclosed amount",
      description:
      """Sept 27 (Reuters) - Cryptocurrency exchange Binance said on Wednesday it will sell its Russia business to newly-launched exchange CommEX, becoming the latest company to pull out of Moscow since the country began its war against Ukraine.

Binance, the world\'s largest cryptocurrency exchange, did not disclose financial details of the deal. The company said it will have no ongoing revenue split from the sale, nor will it maintain an option to buy back shares in the business.
"As we look toward the future, we recognise that operating in Russia is not compatible with Binance's compliance strategy," Chief Compliance Officer Noah Perlman said, without referring to the war in Ukraine, which Russia calls a "special military operation."

Binance also said that all the assets of its existing Russian users were safe and that there will be an orderly process for the migration of users. The divestment process will take up to one year, it added.
CommEX is a centralized cryptocurrency exchange backed by crypto venture capitalists, according to its website. The company only launched its exchange on Tuesday. It did not respond to a request for comment on the Binance deal.

Many Western companies, including the likes of Renault, Shell, McDonald's and others, have agreed to sell their Russian assets or hand them over to local managers to take action to comply with sanctions over the war in Ukraine and deal with threats from the Kremlin that foreign-owned assets may be seized.""",
    ),
    NewsMList(
      title: "South African rand firms against weaker dollar",
      description:
          "ZURICH, Sept 19 (Reuters) - Swiss financial regulator FINMA is increasing the number of specialists overseeing UBS (UBSG.S) following its takeover of Credit Suisse, FINMA Chair Marlene Amstad said.\n\nFINMA, which has come under fire for failing to act swifter or more effectively during the Credit Suisse crisis, is increasing its focus on Switzerland's remaining globally systemically important bank.",
      imageUrl:
          "https://www.reuters.com/resizer/RN63d7uJyj__769jZOny04NGGLE=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/TWMP2G5O7VMTXJE6YIAF3GIPKM.jpg",
    ),
     NewsMList(
       imageUrl:
       'https://www.reuters.com/resizer/pJfHaCDznT_4xj6uCnCM4zfLT60=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/DHEGHNPNG5IKXNX2AGU37IP43Y.jpg',
       title: "Global stocks edge down with data boost fading, shutdown and quarter-end in focus",
       description:
       """NEW YORK, Sept 29 (Reuters) - MSCI'S global equities ended Friday's choppy session slightly lower as investors prepared for a likely U.S. government shutdown and adjusted portfolios for the quarter's end.

Hardline Republicans in the U.S. House of Representatives on Friday afternoon rejected their leader's proposed bill to temporarily fund the government, making it all but certain that federal agencies will partially shut down beginning on Sunday.
Underlying U.S. inflation pressures moderated in August, with the annual rise in prices excluding food and energy falling below 4.0% for the first time in more than two years - seen as welcome news for the Federal Reserve as it ponders the monetary policy outlook.

Earlier data also showed headline inflation in Europe rising more slowly than expected and at its lowest level in two years.

But an earlier boost to stocks from signs of subsiding inflation faded as the session wore on.
While New York Fed President John Williams said the central bank is likely at or near peak rates, he said he still expects it will need to stay restrictive "for some time."

"What's driving everything is interest rates, and what the Fed finally got markets to buy is that lower inflation is not a reason to lower interest rates," said Robert Phipps, director at Per Stirling Capital Management, who saw the comments by Williams as the biggest drag on stocks on Friday as it reminded investors that rates will likely stay higher for longer.""",
     ),
    NewsMList(
      imageUrl:
      'https://www.reuters.com/resizer/V5yk6WOJmURYyHsmx24Vm_NVdx8=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/5S7DGSVWDJIQVGS5G7AMC3VTAI.jpg',
      title: "Dollar on track for best quarter in a year",
      description:
      """NEW YORK/LONDON, Sept 29 (Reuters) - The dollar was on track to post its biggest quarterly gain in a year on Friday and gains for the 11th consecutive week as investors priced in the likelihood of a still solid economy and higher rates for longer.

The greenback retraced most earlier losses against a basket of currencies to be only slightly lower on the day, following data that showed that U.S. consumer spending increased in August, but underlying inflation moderated, with the year-on-year rise in prices excluding food and energy slowing to less than 4.0%.""",

    ),
     NewsMList(
      title: "Valkyrie Funds halts ethereum purchases for exchange-traded fund",
      description:
          """Sept 29 (Reuters) - Financial services firm Valkyrie Funds LLC said on Friday it will halt buying of ethereum for the Valkyrie Bitcoin and Ether Strategy ETF (BTF.O) and unwind any positions already acquired, a stumbling block in its bid to be the first to bring an exchange traded fund (ETF) tied to the cryptocurrency ethereum to the market.

"The Fund will not purchase ether futures contracts until the effectiveness of an amendment to the Fund’s registration statement contemplating the addition of ether futures contracts to the principal investment strategy of the Fund," Valkyrie said in a filing with the Securities and Exchange Commission. "Until such time, the Fund will unwind any existing positions in ether futures contracts."

Valkyrie announced Thursday it had received the green light to acquire ethereum futures contracts as part of the conversion of an existing ETF tied only to Bitcoin to include ethereum. It would have been the first in a series of ETFs to offer exposure to "ether."

In a press release, Valkyrie said it expects the ETF's conversion will become effective "upon the earlier of October 3, 2023, or the time at which the SEC accelerates effectiveness of the registration statement."

The SEC could not immediately be reached for comment.

Separately, VanEck, ProShares and Invesco all have filed to list a variety of ETFs tied to ethereum. Traders and media reports expect them to launch starting Monday.""",
      imageUrl:
          "https://www.reuters.com/resizer/g-O0ZHh2cJFkdUQg_avpYCATMLc=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/GNJ7Y5TXXRN2DEEA4DFZQHPUPE.jpg",
    ),

     NewsMList(
      title: "Canadian dollar extends quarterly decline as economy stalls",
      description:
          """TORONTO, Sept 29 (Reuters) - The Canadian dollar weakened to a two-week low against its U.S. counterpart on Friday, adding to its quarterly decline, as domestic GDP data supported the view that the Bank of Canada is finished hiking interest rates.

The loonie was trading 0.6% lower at 1.3570 to the greenback, or 73.69 U.S. cents, after touching its weakest intraday level since Sept. 13 at 1.3576.

For the week, it was also down 0.6%, while it lost 0.5% in September and 2.5% in the third quarter.

"Part of this (move on Friday) was driven by month-end flows so far and also the weak GDP print," said Bipan Rai, global head of FX strategy at CIBC Capital Markets.

The data suggests "that the Bank of Canada is likely at its terminal rate and that the prior rate hikes are doing their job and working towards slowing activity."

Canadian economic growth ground to a halt in July as the manufacturing sector posted its biggest decline in more than two years, while a preliminary estimate showed GDP edging up 0.1% in August.

Money markets see a 26% chance of a rate hike at the BoC's next policy decision on Oct. 26, down from 31% before the data.

"You do have the ramifications of a stronger (U.S.) dollar against most other currencies as well. It does feel like the U.S. is better equipped to deal with this higher-for-longer message that we are seeing play out in the markets," Rai said.

The U.S. dollar (.DXY) clawed back its earlier decline to stay near a 10-month high against a basket of major currencies, while the price of oil , one of Canada's major exports, was 1% lower at \$90.79 a barrel.""",
      imageUrl:
          "https://www.reuters.com/resizer/rqzaz7meT0kX7vYcq7IrslFaczQ=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/4HK3UNBHGJJ3PCWE6NFBVBTD6A.jpg",
    ),
    NewsMList(
      title: "US dollar share of global currency reserves stays flat in second quarter, IMF says",
      description:
          """NEW YORK, Sept 29 (Reuters) - The U.S. dollar's share of global currency reserves reported to the International Monetary Fund was 58.9% in the second quarter, unchanged from the first three months of the year, IMF data showed on Friday.

Claims in U.S. dollars rose 0.8% to \$6.576 trillion in the second quarter, but were down 1% from a year earlier.

The euro's share edged up slightly to 19.9% in the second quarter, from 19.8% the previous three months. Euro claims grew 1% in the quarter and increased 2% from a year earlier.

"The dollar is still the dominant currency in foreign exchange and international funding. Its share of over-the-counter FX transactions has remained remarkably stable," wrote Michael Langham, emerging markets analyst at abrdn, in one of his latest pieces on the future of the U.S. currency's influence.

But he pointed out the greenback's share of currency reserves has been on a "gradual downward trend," falling over 10 percentage points over the past 20 years. Much of this shift, he said, has been driven by a rotation into other developed market currencies, such as the euro, British pound, the Canadian dollar and Australian dollars.

The Chinese renminbi has also snagged a share of the reserves, but from a very low base, he added.

That said, Langham noted there is a high bar for risks on the dollar to threaten its dominance.

Global reserves, which are reported in U.S. dollars, are central bank assets held in different currencies used in part to support their liabilities. Central banks sometimes use reserves to help support their respective currencies.

The dollar index was up 3.1% in the second quarter, recovering from a 0.9% fall in the first quarter. In the fourth quarter of 2022, the dollar index dropped 7.7%.

The euro, on the other hand, slid 3.1% in the quarter after rising 1.2% in the first three months of the year. It surged 9.3% in the last three months of 2022.

The IMF data also showed the Chinese renminbi's share of currency reserves slipped to 2.4% in the second quarter from about 2.6% in the first. A year ago, that share was 2.8%. In absolute terms, central bank holdings of the yuan fell nearly 5% to \$274.10 billion. The IMF started tracking the yuan's share since 2017.

The Japanese yen's share was steady at 5.4% in the latest quarter from about 5.5% in the first three months of 2023. In dollar terms, yen reserves fell 1.2% to \$602.86 billion.

IMF data also showed total global reserves rose to \$12.055 trillion in the second quarter from \$12.028 trillion in the first quarter. In the fourth quarter of 2021 reserves hit a record \$12.92 trillion.""",
                imageUrl:
          "https://www.reuters.com/resizer/ov5Oy4npEY-qzC6yyxZeRNb1RS4=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/OXFJYPJKX5MS5F2WCBMAPDGJXM.jpg",
    ),
  ];
}

class NewsMList {
  final String title;
  final String description;
  final String imageUrl;

  const NewsMList({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
