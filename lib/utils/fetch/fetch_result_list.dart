import 'package:flutter/material.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'fetch_result.dart';

class FetchResultList<T> extends StatelessWidget {
  final Widget head;
  final Widget bottom;
  final FetchStore<List<T>> fetchStore;
  final Function itemBuilder;
  final String emptyText;
  final IconData emptyIcon;
  final Widget emptyChild;
  final Widget errorChild;
  final String fetchingText;
  final bool expand;
  final bool scroll;
  final bool showLoader;
  final bool showEmpty;
  final bool gridView;
  final double marginBottom;

  const FetchResultList({
    super.key,
    required this.fetchStore,
    required this.itemBuilder,
    this.head = const SizedBox(),
    this.bottom = const SizedBox(),
    this.emptyText = 'Sem resultados para exibição',
    this.emptyIcon = Icons.assignment_late,
    this.emptyChild = const SizedBox(),
    this.errorChild = const SizedBox(),
    this.fetchingText = 'Carregando...',
    this.expand = true,
    this.scroll = true,
    this.showLoader = true,
    this.showEmpty = true,
    this.gridView = false,
    this.marginBottom = 0,
  });

  @override
  Widget build(BuildContext context) {
    return FetchResult(
      fetchStore: fetchStore,
      head: head,
      bottom: bottom,
      emptyText: emptyText,
      emptyIcon: emptyIcon,
      emptyChild: emptyChild,
      errorChild: errorChild,
      expand: expand,
      fetchingText: fetchingText,
      showLoader: showLoader,
      showEmpty: showEmpty,
      body: Observer(
        builder: (_) => ListView.builder(
          padding: EdgeInsets.only(bottom: this.marginBottom),
          shrinkWrap: !scroll,
          physics: !scroll ? const NeverScrollableScrollPhysics() : null,
          itemCount: fetchStore.data == null ? 0 : fetchStore.data!.length,
          itemBuilder: (_, index) => itemBuilder(fetchStore.data == null || index > fetchStore.data!.length ? [] : fetchStore.data![index]),
        ),
      ),
    );
  }
}
