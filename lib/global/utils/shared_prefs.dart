import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;
  static bool _initCalled = false;

  static Future<void> init() async {
    _initCalled = true;
    _prefsInstance = await _prefs;
  }

  static const String keyLoginToken = 'KEY_LOGIN_TOKEN';
  static const String keyRole = 'KEY_ROLE';
  static const String keyUser = 'KEY_CURRENT_USER';

//----------------user setter and getter current
  // static LoginResponseModel getCurrentUser() {
  //   var temp = _prefsInstance?.getString(keyUser) ?? '';

  //   if (temp == '') return LoginResponseModel();

  //   var decoded = LoginResponseModel.fromJson(jsonDecode(temp));

  //   return decoded;
  // }

  static void setCurrentUser({required String user}) async {
    var instance = await _prefs;
    print('this is user setting in preferences ]]');
    print(user);
    await instance.setString(keyUser, user);
  }

//-----------------token setter and getter
  static String getToken() {
    return _prefsInstance?.getString(keyLoginToken) ?? '';
  }

  static void setToken(String? token) async {
    var instance = await _prefs;
    await instance.setString(keyLoginToken, token ?? '');
  }

//-----------------role setter and getter
  static String getRole() {
    return _prefsInstance?.getString(keyRole) ?? '';
  }

  static void setRole(String? role) async {
    var instance = await _prefs;
    await instance.setString(keyRole, role ?? '');
  }

  //-------------------common methods to fetch values
  static Set<String> getKeys() {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');
    return _prefsInstance!.getKeys();
  }

  static dynamic get(String key) {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');
    return _prefsInstance!.get(key);
  }

  static bool getBool(String key, [bool? defValue]) {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');

    return _prefsInstance!.getBool(key) ?? defValue ?? false;
  }

  static int getInt(String key, [int? defValue]) {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');

    return _prefsInstance!.getInt(key) ?? defValue ?? 0;
  }

  static double getDouble(String key, [double? defValue]) {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');

    return _prefsInstance!.getDouble(key) ?? defValue ?? 0.0;
  }

  static String getString(String key, [String? defValue]) {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');

    return _prefsInstance!.getString(key) ?? defValue ?? '';
  }

  static List<String> getStringList(String key, [List<String>? defValue]) {
    assert(_initCalled,
        'Prefs.init() must be called first in an initState() preferably!');
    assert(_prefsInstance != null,
        'Maybe call Prefs.getKeysF() instead. SharedPreferences not ready yet!');

    return _prefsInstance!.getStringList(key) ?? defValue ?? [''];
  }
}
