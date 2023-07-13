import 'package:flutter/material.dart';
import 'package:untitled16/repository/foods_repository.dart';
import 'package:untitled16/utils/colors.dart';
import 'package:untitled16/utils/style.dart';

class CategoryDelegate extends SliverPersistentHeaderDelegate {
  final cats = FoodRepository.categories;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return StatefulBuilder(
      builder: (context, setState) {
        int selected = 0;
        return Container(
          color: AppColors.c111015,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Все товары',
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
              SizedBox(height: 5),
              Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            print(index);
                            selected = index;
                            setState.call(
                              () => selected = index,
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              children: [
                                Image.asset(cats[index].url),
                                SizedBox(width: 5),
                                Text(
                                  cats[index].name,
                                  style: AppStyle.labelRegular.copyWith(
                                      color: (selected == index)
                                          ? Colors.black
                                          : null),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: (selected == index)
                                    ? AppColors.cEDB216
                                    : AppColors.c22222A,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: cats.length),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 110;

  @override
  // TODO: implement minExtent
  double get minExtent => 110;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
