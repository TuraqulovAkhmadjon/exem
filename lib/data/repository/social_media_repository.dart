
import '../../core/client.dart';
import '../model/social_media/social_media_model.dart';

class SocialMediaRepository {
  final ApiClient client;

  SocialMediaRepository({required this.client});

  Future<List<SocialMediaModel>> getSocialMedias() async {
    final rawSocialMedia = await client.genericGetRequest<List<dynamic>>(
      '/social-accounts/list',
    );
    return rawSocialMedia
        .map((social) => SocialMediaModel.fromJson(social))
        .toList();
  }
}
