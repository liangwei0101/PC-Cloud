import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeComponentPage extends Page<HomeComponentState, Map<String, dynamic>> {
  HomeComponentPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeComponentState>(
                adapter: null,
                slots: <String, Dependent<HomeComponentState>>{
                }),
            middleware: <Middleware<HomeComponentState>>[
            ],);

}
