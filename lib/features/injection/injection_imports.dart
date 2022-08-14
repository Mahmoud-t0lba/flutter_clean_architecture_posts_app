import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/network/network_info.dart';
import '../posts/data/datasources/post_local_data_source.dart';
import '../posts/data/datasources/post_remote_data_source.dart';
import '../posts/data/repositories/post_repository_impl.dart';
import '../posts/domain/repositories/posts_repository.dart';
import '../posts/domain/usecases/add_post.dart';
import '../posts/domain/usecases/delete_post.dart';
import '../posts/domain/usecases/get_all_posts.dart';
import '../posts/domain/usecases/update_post.dart';
import '../posts/presentation/bloc/add_delete_update_post/add_delete_update_post_bloc.dart';
import '../posts/presentation/bloc/posts/posts_bloc.dart';

part 'injection.dart';
