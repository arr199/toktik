import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infra/models/video_post_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class LocalVideoPostDataSourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getLandingPageVideos() async {
    final List<VideoPost> newVideos = videoPosts
        .map((e) => VideoPostModel.fromJson(e).toVideoPost())
        .toList();

    return newVideos;
  }
}
