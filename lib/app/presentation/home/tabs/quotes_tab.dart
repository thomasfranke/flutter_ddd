import 'package:flutter/widgets.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app/presentation/home/widgets/quote_summary_widget.dart';
import 'package:flutter_ddd/app/presentation/home/widgets/search_widget.dart';
import 'package:flutter_ddd/utils/fetch/fetch_result_list.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuotesTab extends StatelessWidget {
  const QuotesTab({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get<HomeController>();
    homeController.getFavorites();

    return Observer(
      builder:
          (_) => FetchResultList(
            head: SearchWidget(),
            fetchStore: homeController.quotesList,
            itemBuilder: (QuoteSummaryEntity quote) => QuoteSummaryWidget(quote: quote),
          ),
    );
  }
}
