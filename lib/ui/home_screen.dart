import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled16/delegate/custom_category_sliver_delegate.dart';
import 'dart:math' as math;

import 'package:untitled16/delegate/custom_persistant_delegate.dart';
import 'package:untitled16/repository/foods_repository.dart';
import 'package:untitled16/utils/colors.dart';
import 'package:untitled16/utils/icons.dart';
import 'package:untitled16/utils/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foods = FoodRepository.foods;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: AppColors.c111015,
                  elevation: 0,
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white)),
                        )),
                    Image.asset('assets/images/user.png')
                  ],
                  title: Text(
                    'Привет, Максим',
                    style: AppStyle.headlineBold,
                  ),
                  pinned: true,
                  snap: true,
                  floating: true,
                  // expandedHeight: 300,
                ),
                SliverPersistentHeader(
                  delegate: Delegate(),
                ),
                SliverPersistentHeader(
                  delegate: CategoryDelegate(),
                  pinned: true,
                ),
                SliverPadding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 25),
                  sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                          childCount: foods.length,
                          (context, index) => Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        foods[index].url,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    SizedBox(height: 11),
                                    Text(
                                      foods[index].name,
                                      style: AppStyle.titleMedium,
                                    ),
                                    SizedBox(height: 11),
                                    Text(
                                      foods[index].desc,
                                      // maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppStyle.bodyMedium,
                                    ),
                                    SizedBox(height: 11),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '₽' + foods[index].price.toString(),
                                          style: AppStyle.titleBold,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 3, horizontal: 7),
                                              child: Text(
                                                foods[index]
                                                        .calorie
                                                        .toString() +
                                                    'g',
                                                style: AppStyle.bodySmall,
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: AppColors.c16151B),
                                            ),
                                            SizedBox(width: 8),
                                            Container(
                                              height: 32,
                                              width: 32,
                                              padding: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.transparent,
                                                  border: Border.all(
                                                      color:
                                                          Color(0xFFE1D24A))),
                                              child: SvgPicture.asset(
                                                'assets/svg/shopping_bag.svg',
                                                height: 20,
                                                width: 20,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.c22222A,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 27,
                          crossAxisSpacing: 10,
                          childAspectRatio: 166 / 230)),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                color: Color(0xFF18171C)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppIcons.home),
                  SvgPicture.asset(AppIcons.basket),
                  // Image.asset(AppIcons.img, height: 40, width: 40),
                  SvgPicture.asset(AppIcons.favourite),
                  SvgPicture.asset(AppIcons.smile),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
