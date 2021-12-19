import 'package:enterprise_counter/app_router.dart';
import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/screens/home/home_screen_m.dart';
import 'package:enterprise_counter/services/navigation/navigation_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeScreenViewModel extends BaseViewModel<HomeScreenState> {
  final INavigationService _navigationService;

  HomeScreenViewModel({
    required INavigationService navigationService,
  })  : _navigationService = navigationService,
        super(const HomeScreenState.initial());

  Future<void> goToCounterScreen() {
    return _navigationService.navigateTo(path: Routes.counter);
  }
}
