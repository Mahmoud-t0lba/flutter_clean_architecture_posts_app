part of 'injection_imports.dart';

class Injection {
  static final sl = GetIt.instance;

  static Future<void> init() async {
    /// Features - posts

    /// Bloc

    sl.registerFactory(() => PostsBloc(getAllPosts: sl()));
    sl.registerFactory(() => AddDeleteUpdatePostBloc(
        addPost: sl(), updatePost: sl(), deletePost: sl()));

    /// Usecases

    sl.registerLazySingleton(() => GetAllPostsUsecase(sl()));
    sl.registerLazySingleton(() => AddPostUsecase(sl()));
    sl.registerLazySingleton(() => DeletePostUsecase(sl()));
    sl.registerLazySingleton(() => UpdatePostUsecase(sl()));

    /// Repository

    sl.registerLazySingleton<PostsRepository>(() => PostsRepositoryImpl(
        remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

    /// Datasources

    sl.registerLazySingleton<PostRemoteDataSource>(
        () => PostRemoteDataSourceImpl(client: sl()));
    sl.registerLazySingleton<PostLocalDataSource>(
        () => PostLocalDataSourceImpl(sharedPreferences: sl()));

    /// Core

    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

    /// External

    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton(() => http.Client());
    sl.registerLazySingleton(() => InternetConnectionChecker());
  }
}
