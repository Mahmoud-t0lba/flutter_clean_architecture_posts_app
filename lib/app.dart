import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_theme.dart';
import 'features/posts/presentation/bloc/add_delete_update_post/add_delete_update_post_bloc.dart';
import 'features/posts/presentation/bloc/posts/posts_bloc.dart';
import 'features/posts/presentation/pages/posts_page.dart';
import 'injection.dart' as di;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => di.sl<PostsBloc>()..add(GetAllPostsEvent())),
        BlocProvider(create: (_) => di.sl<AddDeleteUpdatePostBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        title: 'Posts App',
        home: const PostsPage(),
      ),
    );
  }
}