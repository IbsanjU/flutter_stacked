// To autoGenerate Routes
// flutter pub run build_runner build
import 'package:flutter_stacked/ui/views/home/home_view.dart';
import 'package:flutter_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    CupertinoRoute(page: StartupView),
  ],
  // Different dependencies like
  // LazySingleton, Singleton, pre-solved Singleton and factory service
  // can be used here.
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
