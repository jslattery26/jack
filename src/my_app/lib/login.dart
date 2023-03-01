import 'package:flutter/material.dart';
import 'package:flutter_jack/extensions/widget_extensions.dart';
import 'package:flutter_jack/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Screen').paddingOnly(bottom: 12),
            ElevatedButton(
              onPressed: () {
                final auth = ref.watch(authServiceProvider);
                auth.signInAnonymously().catchError((e) {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      title: Text(
                        'You need to set up auth the on firebase console.',
                      ),
                    ),
                  );
                });
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
