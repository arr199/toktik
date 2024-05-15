import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repositories.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoRepository;
  final List<VideoPost> videos = [];
  bool initialLoading = true;

  DiscoverProvider({
    required this.videoRepository,
  });

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    final newVideos = await videoRepository.getLandingPageVideos();
    videos.addAll(newVideos);

    initialLoading = false;
    notifyListeners();
  }
}
