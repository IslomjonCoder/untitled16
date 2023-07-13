import 'package:untitled16/models/category_model.dart';
import 'package:untitled16/models/food_model.dart';
import 'package:untitled16/utils/icons.dart';

class FoodRepository {
  static List<FoodModel> foods = [
    FoodModel(
      name: 'Чикен Бургер',
      desc: 'Котлета куриная, свежие овощи, сыр чеддер,  соус для бургера',
      price: 160,
      calorie: 290,
      url: 'assets/images/Chicken burger 1.png',
    ),
    FoodModel(
      name: 'Блэк Бургер',
      desc: 'Котлета свино-говяжья, свежие овощи, сыр чеддер, соус для бургера',
      price: 190,
      calorie: 330,
      url: 'assets/images/Black burger 1.png',
    ),
    FoodModel(
      name: 'Дабл Бургер',
      desc: 'Булка с кунжутом тройная, 2 котлеты с солью и перцем, лист',
      price: 230,
      calorie: 300,
      url: 'assets/images/Chicken burger 1.png',
    ),
    FoodModel(
      name: 'BBQ Бургер',
      desc:
          'Котлета свино-говяжья, соленый огурец, свежие  овощи, бекон, сыр чед..',
      price: 190,
      calorie: 330,
      url: 'assets/images/Chicken burger 1.png',
    ),
    FoodModel(
      name: 'Шеф Бургер',
      desc:
          'Котлета мраморной говядины, свежие овощи, сыр чеддер, соус для бу..',
      price: 220,
      calorie: 310,
      url: 'assets/images/Chicken burger 1.png',
    ),
  ];
  static List<CategoryModel> categories = [
    CategoryModel(name: 'Бургеры', url: AppIcons.burger),
    CategoryModel(name: 'Пицца', url: AppIcons.pizza),
    CategoryModel(name: 'Фрэнч Доги', url: AppIcons.frenchDog),
    CategoryModel(name: 'Снэки', url: AppIcons.snack),
    CategoryModel(name: 'Бургеры', url: AppIcons.burger),
    // CategoryModel(name: 'Напитки', url: ''),
    // CategoryModel(name: 'Салаты', url: ''),
    // CategoryModel(name: 'Супы', url: ''),
    // CategoryModel(name: 'Десерты', url: ''),
  ];
}
