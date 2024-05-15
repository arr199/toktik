import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repositories.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource datasource;

  VideoPostRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<List<VideoPost>> getLandingPageVideos() async {
    return datasource.getLandingPageVideos();
  }
}
