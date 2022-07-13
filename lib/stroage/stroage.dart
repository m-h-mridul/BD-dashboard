import 'package:dashboard_dcall/model/userinformation.dart';
import 'package:hive/hive.dart';

import '../utils/helper/callingName.dart';

class HiveBoxstraoage {
  static bool userlogin = false;

  //**web storage */
  final _box = Hive.box(CallingName.offline_databsename);

  //**svae value */
  void savevalue({String? key, String? value}) {
    _box.put(key, value);
  }

  //**get value */
  String? getvalue({String? key}) => _box.get(key) ?? CallingName.empty;

  //**get user login or not */
  void logincheak({String? key}) {
    userlogin = _box.get(key) == null;
    //**if user register or  login then get user information form off straoge */
    if (userlogin) {
      UserInformation.userID = getvalue(key: CallingName.heading_text_user_id)!;
    }
    print('cheaak user login or not ');
  }

  //**remove value */
  Future<int> delate_value({String? key}) async {
    int value = await _box.clear();
    return value;
  }
}
