import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_info/di.dart';
import 'package:smart_info/features/splash/presentation/screens/splash_screen.dart';

import 'app_routes.dart';

final getPage = getIt.get<AppPages>();

class AppPages extends AppRoutes {
  @override
  List<GetPage> get routes => <GetPage>[
        _getPage(
          name: splash,
          args: String,
          page: () => const SplashScreen(),
        ),
      ];

  /// Here are some commonly used attributes,
  /// if you need more you can add them below
  GetPage _getPage({
    required String name,
    required Widget Function() page,
    Object? args,
    Transition? transition,
    CustomTransition? customTransition,
    Duration? transitionDuration,
    List<Bindings>? bindings,
    bool? fullscreenDialog,
    bool? preventDuplicates,
    bool? opaque,
    bool? maintainState,
    Curve? curve,
    Alignment? alignment,
    List<GetMiddleware>? middlewares,
  }) {
    return GetPage(
      name: name,
      page: page,
      arguments: args,
      bindings: bindings ?? [],
      middlewares: middlewares,
      fullscreenDialog: fullscreenDialog ?? false,
      preventDuplicates: preventDuplicates ?? true,
      maintainState: maintainState ?? true,
      opaque: opaque ?? true,
      curve: curve ?? Curves.linear,
      alignment: alignment,
      transition: transition ?? Transition.rightToLeft,
      transitionDuration:
          transitionDuration ?? const Duration(milliseconds: 250),
      customTransition: customTransition,
      /** Additional attributes*/
    );
  }

  @override
  String get splash => '/splash';
}
