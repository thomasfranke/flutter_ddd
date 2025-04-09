import 'package:flutter_ddd/app/presentation/feedback/feedback_controller.dart';
import 'package:flutter_ddd/app/presentation/feedback/feedback_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedbackModule extends Module {
  FeedbackModule();

  @override
  void binds(i) {
    i.addSingleton(FeedbackController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => FeedbackScreen());
  }
}
