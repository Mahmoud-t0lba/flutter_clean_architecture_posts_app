import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_clean_arc/core/app/app.dart';
import 'package:post_clean_arc/features/injection/injection_imports.dart';
import 'package:post_clean_arc/features/posts/presentation/bloc/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  Bloc.observer = MyBlocObserver();
  runApp(
    const MyApp(),
  );
}
