import 'package:flutter/material.dart';

enum BranchType {
  home(
    label: "ホーム",
    icon: Icons.home,
  ),
  notification(
    label: "お知らせ",
    icon: Icons.notifications,
  ),
  profile(
    label: "マイページ",
    icon: Icons.person,
  );

  const BranchType({
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;
}
