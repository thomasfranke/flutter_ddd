import 'package:flutter_ddd/domain/entities/home_data_entity.dart';
import 'package:flutter_ddd/domain/usecases/home_usecase.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  HomeUseCase homeUseCase = Modular.get<HomeUseCase>();

  @observable
  FetchStore<HomeDataEntity> homeData = FetchStore(HomeDataEntity());

  getHomeData() {
    homeData.fetch(homeUseCase.loadHomeDataUseCase());
  }
}
