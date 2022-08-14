part of 'multi_blocs_imports.dart';

class MultiBlocs {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider(
            create: (_) => Injection.sl<PostsBloc>()..add(GetAllPostsEvent())),
        BlocProvider(create: (_) => Injection.sl<AddDeleteUpdatePostBloc>()),
      ];
}
