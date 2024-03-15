import 'dart:typed_data';

import 'package:hive/hive.dart';

abstract class LocalStorage {
  Future storeProfilePhoto(String user, Uint8List image);

  Future<Uint8List?> getUserPhoto(String user);
}

class LocalStorageImp implements LocalStorage {
  Box<Uint8List>? _hive;

  LocalStorageImp();

  Future initHive() async {
    if (_hive != null) _hive = await Hive.openBox(_photoKey);
  }

  @override
  Future storeProfilePhoto(String user, Uint8List image) async {
    try {
      await initHive();
      await _hive?.put(user, image);
      print('STORE PHOTO FOR USER: $user');
    } catch (e) {
      print('Error saving file to SharedPreferences: $e');
    }
  }

  @override
  Future<Uint8List?> getUserPhoto(String user) async {
    try {
      await initHive();
      final photo = _hive?.get(user);
      // if (photo != null) print('LOADED PHOTO FOR USER: $user');
      return photo;
    } catch (e) {
      print('Error while getting user photo');
      return null;
    }
  }
}

const _photoKey = 'photo';
