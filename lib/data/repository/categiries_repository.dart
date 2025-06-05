
import '../../core/client.dart';
import '../model/categories/categories_model.dart';

class CategoriesRepository {
  final ApiClient client;

  CategoriesRepository({required this.client});

  Future<List<CategoriesModel>> getCategories([int? limit, int? page]) async {
    var rawCategory = await client.genericGetRequest<List<dynamic>>(
      '/categories/list',
      queryParams: {'Limit': limit, 'Page': page},
    );
    return rawCategory
        .map((category) => CategoriesModel.fromJson(category))
        .toList();
  }
}
