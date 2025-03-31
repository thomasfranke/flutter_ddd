import 'package:flutter/material.dart';
import 'package:flutter_ddd/utils/fetch/fetch_store.dart';
import 'package:flutter_ddd/core/widgets/content_container.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FetchResult extends StatelessWidget {
  final Widget head;
  final Widget body;
  final Widget bottom;
  final String emptyText;
  final IconData emptyIcon;
  final String fetchingText;
  final Widget emptyChild;
  final Widget errorChild;
  final FetchStore fetchStore;
  final bool expand;
  final bool showLoader;
  final bool showEmpty;

  const FetchResult({
    super.key,
    required this.fetchStore,
    this.head = const SizedBox(),
    this.body = const SizedBox(),
    this.bottom = const SizedBox(),
    this.emptyText = 'Sem resultados para exibição',
    this.emptyIcon = Icons.assignment_late,
    this.emptyChild = const SizedBox(),
    this.errorChild = const SizedBox(),
    this.fetchingText = 'Carregando...',
    this.expand = true,
    this.showLoader = true,
    this.showEmpty = true,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleContentContainer(head: head, bottom: bottom, expand: expand, child: _bodyContent);
  }

  Widget get _bodyContent {
    return Observer(
      builder: (BuildContext context) {
        if (fetchStore.isFetching) {
          return showLoader ? _Fetching(fetchingText) : (body);
        }

        if (fetchStore.hasError) {
          return _Error(fetchStore: fetchStore, errorChild: errorChild);
        }

        if (!fetchStore.isFetching && ((fetchStore.data is List && fetchStore.data.length == 0) || fetchStore.data == null)) {
          return _Empty(emptyIcon: emptyIcon, emptyText: emptyText, emptyChild: emptyChild, showEmpty: showEmpty);
        }

        return body;
      },
    );
  }
}

class _Fetching extends StatelessWidget {
  final String fetchingText;

  const _Fetching(this.fetchingText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[const CircularProgressIndicator(), SizedBox(height: 20), Text(fetchingText)]),
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final FetchStore fetchStore;
  final Widget errorChild;

  const _Error({required this.fetchStore, this.errorChild = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[const Icon(Icons.error_outline, size: 48, color: Colors.black54), Text(fetchStore.errorMessage, textAlign: TextAlign.center), errorChild],
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final IconData emptyIcon;
  final String emptyText;
  final Widget emptyChild;
  final bool showEmpty;

  const _Empty({this.emptyIcon = Icons.info, this.emptyText = 'Sem resultados para exibição', this.emptyChild = const SizedBox(), this.showEmpty = true});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showEmpty,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(bottom: 8.0), child: Icon(emptyIcon, size: 48, color: Colors.black45)),
              Padding(padding: const EdgeInsets.all(8.0), child: Text(emptyText, textAlign: TextAlign.center, style: const TextStyle(color: Colors.black45))),
              emptyChild,
            ],
          ),
        ),
      ),
    );
  }
}
