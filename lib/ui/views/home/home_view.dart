import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(model.title + ' - stacked architecture'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(model.title + ' ${model.counter}'),
              FlatButton(
                  color: Theme.of(context).accentColor,
                  onPressed: model.secondPage,
                  child: Text('Goto Second Page'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: model.updateCounter,
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
