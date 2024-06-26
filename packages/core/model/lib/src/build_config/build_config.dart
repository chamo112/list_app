import 'package:core_model/build_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'build_config.g.dart';

@Riverpod(keepAlive: true)
BuildConfig buildConfig(ref) {
  throw UnimplementedError('buildConfig');
}

abstract class BuildConfig {
  abstract final Flavor flavor;
  abstract final String appName;
}
