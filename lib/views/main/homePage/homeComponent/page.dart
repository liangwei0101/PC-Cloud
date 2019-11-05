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
            view: buildView,);

}
