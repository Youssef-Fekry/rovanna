import 'package:rovanna_app/core/helper/api.dart';
import 'package:rovanna_app/features/categories/data/models/categorymodel/categorymodel.dart';
import 'package:rovanna_app/features/categories/data/models/subcategorymodel/subcategorymodel.dart';

abstract class CategoryDataSource {
  Future<List<Categorymodel>> getCategories();

  Future<List<Subcategorymodel>> getSubCategory();
}

class CategoryDataSourceImpl extends CategoryDataSource {
  final Apiservices apiservices;
  CategoryDataSourceImpl(this.apiservices);

  @override
  Future<List<Categorymodel>> getCategories() async {
    var data = await apiservices.get(endPoint: 'categories/get');

    List<Categorymodel> categoryList = [];

    for (var categorymap in data['data']) {
      categoryList.add(Categorymodel.fromJson(categorymap));
    }

    return categoryList;
  }

  @override
  Future<List<Subcategorymodel>> getSubCategory() async {
    var data = await apiservices.get(endPoint: 'categories/subs/1');

    List<Subcategorymodel> subcategoryList = [];

    for (var subcategorymap in data['data']) {
      subcategoryList.add(Subcategorymodel.fromJson(subcategorymap));
    }

    return subcategoryList;
  }
}
