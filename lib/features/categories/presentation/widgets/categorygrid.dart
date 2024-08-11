import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rovanna_app/core/utils/approuter.dart';
import 'package:rovanna_app/core/utils/media.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/categorycard.dart';

Padding categoryGrid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Categorycard(
            label: 'Accessories',
            img: const AssetImage(Media.categoryAccessories),
            ontap: () {
              GoRouter.of(context).push(AppRouter.kAccessoriesScreen);
            },
          ),
          Categorycard(
            label: 'Cosmetics',
            img: const AssetImage(Media.categoryCosmatiecs),
            ontap: () {
              GoRouter.of(context).push(AppRouter.kcosmeticesScreen);
            },
          ),
          Categorycard(
            label: 'Fashion',
            img: const AssetImage(Media.categoryFashion),
            ontap: () {
              GoRouter.of(context).push(AppRouter.kFashionScreen);
            },
          ),
        ],
      ),
    ),
  );
}
