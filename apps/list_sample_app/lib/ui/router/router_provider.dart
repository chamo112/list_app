
import 'package:go_router/go_router.dart';
import 'package:list_app/ui/router/utils/route_path_name.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref){
  return GoRouter(
      initialLocation: '/${RoutePathName.home}',
    routes: [
      // $mainRoute,
    ]
  )
}