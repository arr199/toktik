import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/models/video_post_model.dart';
import 'package:toktik/shared/widgets/video_buttons.dart';
import 'package:toktik/shared/widgets/video_player.dart';
import "../data/local_video_post.dart";

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos =
      videoPosts.map((e) => VideoPostModel.fromJson(e).toVideoPost()).toList();

  VideoScrollableView({
    super.key,
    videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            FullScreenVideoPlayer(
              caption: videoPost.caption,
              videoURL: videoPost.videoUrl,
            ),
            VideoButtons(
              video: videoPost,
              isLiked: true,
            )
          ],
        );
      },
    );
  }
}
