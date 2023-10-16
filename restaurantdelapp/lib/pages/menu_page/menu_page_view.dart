import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurantdelapp/utils/consts/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurantdelapp/utils/enums/filter_list.dart';
import 'package:restaurantdelapp/utils/enums/food_list.dart';
import 'package:restaurantdelapp/utils/enums/tags_list.dart';
import 'package:restaurantdelapp/utils/samples/fliter_model.dart';
import 'package:restaurantdelapp/utils/samples/prev_card_food.dart';
import 'package:restaurantdelapp/utils/samples/tag_sample.dart';

import '../../utils/consts/texts.dart';

class MenuPageView extends StatefulWidget {
  const MenuPageView({Key? key}) : super(key: key);

  @override
  State<MenuPageView> createState() => _MenuPageViewState();
}

class _MenuPageViewState extends State<MenuPageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const SizedBox(
                  height: 40,
                ),
                const AppBarText(text: 'MENU'),
                const SizedBox(
                  height: 20,
                ),
                CupertinoTextField(
                  prefix: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Icon(
                      Icons.search,
                      color: textLowColor,
                    ),
                  ),
                  suffix: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return FiltersWindow();
                            },
                          );
                        },
                        child: Icon(CupertinoIcons.color_filter)),
                  ),
                  placeholder: "SEARCH FOR",
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: searchColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8),
                      top: Radius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset('assets/banner.png', scale: 0.1),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TagSample(index: index);
              },
              itemCount: TagsList.tagsList.length,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
            height: 2000,
            child: GridView.builder(
              itemBuilder: (context, index) {
                return PrevFoodCard(index: index);
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: FoodList.foodList.length,
            ),
          ),
        ],
      ),
    );
  }
}
