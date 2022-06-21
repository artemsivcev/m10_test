import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../domain/models/user_details.dart';

/// Base DB class for storage. In [init] we init Hive and registering
/// class adapters from here.
/// [openEncryptedBox] return box by name with secure key.
/// [FlutterSecureStorage] using for store secure key for decode\encode hive boxes
abstract class SafeStorageBase {
  static const _secureStorage = FlutterSecureStorage();

  init() async {
    Hive.init((await getApplicationSupportDirectory()).path);
    Hive.registerAdapter(UserDetailsAdapter());
  }

  Future<Box<E>> openEncryptedBox<E>(String boxName) async {
    // if key not exists return null
    final isKeyExist = await _secureStorage.read(key: 'key') != null;
    if (!isKeyExist) {
      final key = Hive.generateSecureKey();
      await _secureStorage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    }
    final key = await _secureStorage.read(key: 'key');
    final encryptionKey = base64Url.decode(key!);

    return Hive.openBox(boxName,
        encryptionCipher: HiveAesCipher(encryptionKey));
  }
}
