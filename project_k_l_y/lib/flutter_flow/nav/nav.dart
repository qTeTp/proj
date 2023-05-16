import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? LoggedInWidget() : TeacherLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? LoggedInWidget()
              : TeacherLoginWidget(),
        ),
        FFRoute(
          name: 'Teacher_Login',
          path: '/teacherLogin',
          builder: (context, params) => TeacherLoginWidget(),
        ),
        FFRoute(
          name: 'Admin_Login',
          path: '/adminLogin',
          builder: (context, params) => AdminLoginWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: 'Consentprivacy',
          path: '/consentprivacy',
          builder: (context, params) => ConsentprivacyWidget(),
        ),
        FFRoute(
          name: 'Teacher_Main',
          path: '/teacherMain',
          builder: (context, params) => TeacherMainWidget(),
        ),
        FFRoute(
          name: 'Admin_Main',
          path: '/adminMain',
          builder: (context, params) => AdminMainWidget(),
        ),
        FFRoute(
          name: 'Admin_Calendar',
          path: '/adminCalendar',
          builder: (context, params) => AdminCalendarWidget(),
        ),
        FFRoute(
          name: 'Admin_CampDetail',
          path: '/adminCampDetail',
          builder: (context, params) => AdminCampDetailWidget(),
        ),
        FFRoute(
          name: 'Admin_ReportPreview',
          path: '/adminReportPreview',
          builder: (context, params) => AdminReportPreviewWidget(),
        ),
        FFRoute(
          name: 'All_EditReport',
          path: '/allEditReport',
          builder: (context, params) => AllEditReportWidget(),
        ),
        FFRoute(
          name: 'All_Alarm',
          path: '/allAlarm',
          builder: (context, params) => AllAlarmWidget(
            asdfsadf: params.getParam('asdfsadf', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'Teacher_Information',
          path: '/teacherInformation',
          builder: (context, params) => TeacherInformationWidget(),
        ),
        FFRoute(
          name: 'Teacher_CampDetail',
          path: '/teacherCampDetail',
          builder: (context, params) => TeacherCampDetailWidget(),
        ),
        FFRoute(
          name: 'Teacher_ChangeInfo_01',
          path: '/teacherChangeInfo01',
          builder: (context, params) => TeacherChangeInfo01Widget(),
        ),
        FFRoute(
          name: 'Teacher_ChangeInfo_02',
          path: '/teacherChangeInfo02',
          builder: (context, params) => TeacherChangeInfo02Widget(),
        ),
        FFRoute(
          name: 'Teacher_Calendar',
          path: '/teacherCalendar',
          builder: (context, params) => TeacherCalendarWidget(),
        ),
        FFRoute(
          name: 'SM_CL_01',
          path: '/smCl01',
          builder: (context, params) => SmCl01Widget(),
        ),
        FFRoute(
          name: 'admin_Campadd',
          path: '/adminCampadd',
          builder: (context, params) => AdminCampaddWidget(),
        ),
        FFRoute(
          name: 'Teacher_bill',
          path: '/teacherBill',
          builder: (context, params) => TeacherBillWidget(),
        ),
        FFRoute(
          name: 'safetychecklist03',
          path: '/safetychecklist03',
          builder: (context, params) => Safetychecklist03Widget(),
        ),
        FFRoute(
          name: 'saftey_hyeonjang',
          path: '/safteyHyeonjang',
          builder: (context, params) => SafteyHyeonjangWidget(),
        ),
        FFRoute(
          name: 'Sup_cobill',
          path: '/supCobill',
          builder: (context, params) => SupCobillWidget(),
        ),
        FFRoute(
          name: 'join_contract',
          path: '/joinContract',
          builder: (context, params) => JoinContractWidget(),
        ),
        FFRoute(
          name: 'teacher_resume',
          path: '/teacherResume',
          builder: (context, params) => TeacherResumeWidget(),
        ),
        FFRoute(
          name: 'sup_result1',
          path: '/supResult1',
          builder: (context, params) => SupResult1Widget(),
        ),
        FFRoute(
          name: 'sup_result2',
          path: '/supResult2',
          builder: (context, params) => SupResult2Widget(),
        ),
        FFRoute(
          name: 'teacher_contract',
          path: '/teacherContract',
          builder: (context, params) => TeacherContractWidget(),
        ),
        FFRoute(
          name: 'LoggedIn',
          path: '/Teacher_MainCopy',
          builder: (context, params) => LoggedInWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/teacherLogin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
