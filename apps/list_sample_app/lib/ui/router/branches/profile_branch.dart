import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list_app/ui/router/branches/branch_type.dart';
import 'package:list_app/ui/router/utils/route_path_name.dart';

const profileBranch = TypedStatefulShellBranch<ProfileBranch>(
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute(
      path: '/${RoutePathName.profile}',
    ),
  ],
);

final GlobalKey<NavigatorState> _profileNavigatorKey =
    GlobalKey<NavigatorState>();

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = _profileNavigatorKey;
}

class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              BranchType.profile.label,
            )
          ]),
        ),
      );
}
