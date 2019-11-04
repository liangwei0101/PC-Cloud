import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MyComponentPage extends Page<MyComponentState, Map<String, dynamic>> {
  MyComponentPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MyComponentState>(
                adapter: null,
                slots: <String, Dependent<MyComponentState>>{
                }),
            middleware: <Middleware<MyComponentState>>[
            ],);

}
