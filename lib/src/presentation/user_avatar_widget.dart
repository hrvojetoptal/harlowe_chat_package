import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserAvatarWidget extends ConsumerWidget {
  final String chatIdentity;
  final Map<String, Uint8List?>? participantImages;

  UserAvatarWidget({
    super.key,
    required this.chatIdentity,
    required this.participantImages,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageBytes = participantImages?[chatIdentity];
    if (imageBytes != null) {
      return CircleAvatar(
        radius: 18,
        foregroundImage: MemoryImage(imageBytes),
      );
    }
    return CircleAvatar(
      radius: 18,
      child: Text(chatIdentity[0].toUpperCase()),
    );
  }
}
