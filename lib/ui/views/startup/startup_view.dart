import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/views/startup/startup_view_model.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(model.title + ' - CupertinoNavigation'),
        ),
        body: Center(
          child: Text(model.title + ' ${model.counter}'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: model.updateCounter,
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
