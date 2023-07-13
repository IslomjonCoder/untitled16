import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled16/repository/foods_repository.dart';
import 'package:untitled16/utils/colors.dart';
import 'package:untitled16/utils/style.dart';

class Delegate extends SliverPersistentHeaderDelegate {
  final foods = FoodRepository.foods;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 200,
      color: AppColors.c111015,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ваши любимые товары',
                  style: AppStyle.titleBold,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Посмотреть все",
                      style: AppStyle.titleRegular
                          .copyWith(color: AppColors.cEDB216),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      width: 300,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            foods[index].url,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(width: 11),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      foods[index].name,
                                      style: AppStyle.titleMedium,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    IconButton(
                                        splashColor: Colors.white,
                                        // splashRadius: 10,
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                                Text(
                                  foods[index].desc,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyle.bodyMedium,
                                ),
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
                                            foods[index].calorie.toString() +
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
                                                  color: Color(0xFFE1D24A))),
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
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.c22222A,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: foods.length),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 220;

  @override
  // TODO: implement minExtent
  double get minExtent => 200;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
