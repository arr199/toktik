import 'package:toktik/domain/entities/video_post.dart';
import 'package:uuid/uuid.dart';

class VideoPostModel {
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPostModel({
    required this.caption,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory VideoPostModel.fromJson(Map<String, dynamic> json) {
    return VideoPostModel(
      caption: json['name'],
      videoUrl: json['videoUrl'],
      likes: json['likes'],
      views: json['views'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': caption,
        'videoUrl': videoUrl,
        'likes': likes,
        'views': views,
      };

  VideoPost toVideoPost() => VideoPost(
        id: const Uuid().v4(),
        caption: caption,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
