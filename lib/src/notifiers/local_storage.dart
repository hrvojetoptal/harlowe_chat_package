import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final localStorageProvider = Provider<LocalStorage>(
  (_) => LocalStorageImp(
    Hive.openBox(_photoKey),
  ),
);

abstract class LocalStorage {
  Future storeProfilePhoto(String user, Uint8List image);

  Future<Uint8List?> getUserPhoto(String user);
}

class LocalStorageImp implements LocalStorage {
  final Future<Box<Uint8List>> _hiveFuture;

  LocalStorageImp(this._hiveFuture);

  @override
  Future storeProfilePhoto(String user, Uint8List image) async {
    try {
      final hive = await _hiveFuture;
      await hive.put(user, image);
      print('STORE PHOTO FOR USER: $user');
    } catch (e) {
      print('Error saving file to SharedPreferences: $e');
    }
  }

  @override
  Future<Uint8List?> getUserPhoto(String user) async {
    try {
      final hive = await _hiveFuture;
      final photo = hive.get(user);
      // if (photo != null) print('LOADED PHOTO FOR USER: $user');
      return photo;
    } catch (e) {
      print('Error while getting user photo');
      return null;
    }
  }
}

const _photoKey = 'photo';
