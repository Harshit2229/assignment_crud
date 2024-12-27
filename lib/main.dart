import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/crud/bloc/bloc.dart';
import 'app/crud/repo/posts_api_service.dart';
import 'app/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc(PostsApiService())..add(LoadPosts()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Posts App',
        // theme: AppTheme.lightTheme,
        // darkTheme: AppTheme.darkTheme,
        home: SplashScreen(),
      ),
    );
  }
}
