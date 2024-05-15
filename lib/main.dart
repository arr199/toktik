import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/themes/app_theme.dart';
import 'package:toktik/domain/repositories/video_post_repositories.dart';
import 'package:toktik/infra/datasources/local_video_post_datasource_impl.dart';
import 'package:toktik/infra/repositories/video_post_repository_impl.dart';
import 'package:toktik/providers/discover_provider.dart';
import 'package:toktik/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPostRepository videoRepository =
        VideoPostRepositoryImpl(datasource: LocalVideoPostDataSourceImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (context) =>
                DiscoverProvider(videoRepository: videoRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTiK',
        theme: AppTheme().themeData(),
        debugShowCheckedModeBanner: false,
        home: const DiscoverScreen(),
      ),
    );
  }
}
