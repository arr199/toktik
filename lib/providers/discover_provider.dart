import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/models/video_post_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  final List<VideoPost> videos = [];
  bool initialLoading = true;

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((e) => VideoPostModel.fromJson(e).toVideoPost())
        .toList();

    videos.addAll(newVideos);

    initialLoading = false;
    notifyListeners();
  }
}
