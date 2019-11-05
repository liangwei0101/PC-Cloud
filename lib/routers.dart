import 'package:fish_redux/fish_redux.dart';
import 'package:pc_cloud/views/main/page.dart';
import 'package:pc_cloud/views/uploadedList/page.dart';
import 'global_store/state.dart';
import 'global_store/store.dart';

///  routers
/// @author Liang Wei
/// date 2019-11-04

final AbstractRoutes routes = PageRoutes(
  pages: <String, Page<Object, dynamic>>{
    // 主页
    'main': MainPage(),
    // 上传完成
    'uploadedList': UploadedListPage()
  },

  // 全局store
  visitor: (String path, Page<Object, dynamic> page) {
    if (page.isTypeof<GlobalBaseState>()) {
      page.connectExtraStore<GlobalState>(GlobalStore.store,
              (Object pageState, GlobalState appState) {
            final GlobalBaseState p = pageState;
            if (p.themeColor != appState.themeColor) {
              if (pageState is Cloneable) {
                final Object copy = pageState.clone();
                final GlobalBaseState newState = copy;
                newState.themeColor = appState.themeColor;
                newState.uploadingFileList = appState.uploadingFileList;
                newState.assetPathEntityList = appState.assetPathEntityList;
                return newState;
              }
            }
            return pageState;
          });
    }
  },
);
