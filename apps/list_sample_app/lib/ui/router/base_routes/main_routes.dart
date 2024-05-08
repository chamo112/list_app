
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list_app/ui/router/branches/home_branch.dart';
import 'package:list_app/ui/router/branches/notification_branch.dart';
import 'package:list_app/ui/router/branches/profile_branch.dart';

import '../branches/branch_type.dart';

part 'main_routes.g.dart';

final _mainNavigatorKey = GlobalKey<NavigatorState>();

const _branches = [
  homeBranch,
  notificationBranch,
  profileBranch
];


@TypedStatefulShellRoute<MainRoute>(branches: _branches)
class MainRoute extends StatefulShellRouteData {
  const MainRoute();
  static final GlobalKey<NavigatorState> $navigatorKey = _mainNavigatorKey;

  @override
  Widget builder(
      BuildContext context,
      GoRouterState state,
      StatefulNavigationShell navigationShell,
      ){
    assert(
    _branches.length == BranchType.values.length,
    'branches.lengthとBranchType.values.lengthは同じである必要があります',
    );

  }
}

