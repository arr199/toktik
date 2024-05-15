import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getLandingPageVideos();

}
