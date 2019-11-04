import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class UploadingComponentPage extends Page<UploadingComponentState, Map<String, dynamic>> {
  UploadingComponentPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<UploadingComponentState>(
                adapter: null,
                slots: <String, Dependent<UploadingComponentState>>{
                }),
            middleware: <Middleware<UploadingComponentState>>[
            ],);

}
