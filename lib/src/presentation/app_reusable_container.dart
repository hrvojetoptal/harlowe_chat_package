import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harlowe_chat_package/src/presentation/chat_page.dart';

class AppReusableContainer extends ConsumerWidget {
  final Widget child;

  const AppReusableContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      borderRadius: softHarloweRadius,
      elevation: 3,
      color: Colors.white,
      child: child,
    );
  }
}
