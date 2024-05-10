import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/providers/discover_provider.dart';
import 'package:toktik/shared/widgets/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Discover')),
      ),
      body: Center(
        child: discoverProvider.initialLoading
            ? const CircularProgressIndicator(strokeWidth: 2)
            : VideoScrollableView(
                videos: discoverProvider.videos,
              ),
      ),
    );
  }
}
