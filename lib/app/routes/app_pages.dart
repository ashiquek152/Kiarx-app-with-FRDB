import 'package:get/get.dart';

import '../modules/analysis/bindings/analysis_binding.dart';
import '../modules/analysis/views/analysis_view.dart';
import '../modules/auhtentication/bindings/auhtentication_binding.dart';
import '../modules/auhtentication/views/auhtentication_view.dart';
import '../modules/dash_board/bindings/dash_board_binding.dart';
import '../modules/dash_board/views/dash_board_view.dart';
import '../modules/excavator_panel/bindings/excavator_panel_binding.dart';
import '../modules/excavator_panel/views/excavator_panel_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/tab_bar/bindings/tab_bar_binding.dart';
import '../modules/tab_bar/views/tab_bar_view.dart';
import '../modules/truck_panel/bindings/truck_panel_binding.dart';
import '../modules/truck_panel/views/truck_panel_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUHTENTICATION;

  static final routes = [
    GetPage(
      name: _Paths.TAB_BAR,
      page: () => TabBarViewScreen(),
      binding: TabBarBinding(),
    ),
    GetPage(
      name: _Paths.DASH_BOARD,
      page: () => DashBoardView(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: _Paths.TRUCK_PANEL,
      page: () => const TruckPanelView(),
      binding: TruckPanelBinding(),
    ),
    GetPage(
      name: _Paths.EXCAVATOR_PANEL,
      page: () => const ExcavatorPanelView(),
      binding: ExcavatorPanelBinding(),
    ),
    GetPage(
      name: _Paths.ANALYSIS,
      page: () => const AnalysisView(),
      binding: AnalysisBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.AUHTENTICATION,
      page: () =>  AuhtenticationView(),
      binding: AuhtenticationBinding(),
    ),
  ];
}
