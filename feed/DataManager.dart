import 'package:feed_flutter/model/MockData.dart';

import 'model/Post.dart';

class DataManager {

  static late DataManager _instence;

  DataManager.internal();

  static get instence {
    if (_instence == null) {
      _instence = DataManager.internal();
    }

    return _instence;
  }


}


