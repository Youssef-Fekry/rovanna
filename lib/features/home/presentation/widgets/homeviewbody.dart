import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/media.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/categorygrid.dart';
import 'package:rovanna_app/features/home/presentation/widgets/autoscrollablescreen.dart';
import 'package:rovanna_app/features/home/presentation/widgets/itemslistview.dart';
import 'package:rovanna_app/features/home/presentation/widgets/lable.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoScrollableScreen(),
              const SizedBox(height: 8),
              categoryGrid(context),
              const SizedBox(height: 8),
              Lable(
                nameofCategory: 'Cosmatecis',
                view: 'View All',
                ontap: () {},
              ),
              const Itemslistview(
                text: 'item',
                img: AssetImage(Media.categoryCosmatiecs),
              ),
              Lable(
                nameofCategory: 'Fashion',
                view: 'View All',
                ontap: () {},
              ),
              const Itemslistview(
                text: 'item',
                img: AssetImage(Media.categoryFashion),
              ),
              Lable(
                nameofCategory: 'Accessories',
                view: 'View All',
                ontap: () {},
              ),
              const Itemslistview(
                text: 'item',
                img: AssetImage(Media.categoryAccessories),
              )
            ],
          ),
        ),
      ],
    );
  }
}
