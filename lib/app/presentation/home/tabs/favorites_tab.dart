import 'package:flutter/widgets.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app/presentation/home/widgets/quote_summary_widget.dart';
import 'package:flutter_ddd/utils/fetch/fetch_result_list.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get<HomeController>();
    homeController.getCurrencies();

    return Observer(
      builder:
          (_) => FetchResultList(
            fetchStore: homeController.favoritesList,
            itemBuilder: (QuoteSummaryEntity quote) => QuoteSummaryWidget(quote: quote),
          ),
    );
  }
}
