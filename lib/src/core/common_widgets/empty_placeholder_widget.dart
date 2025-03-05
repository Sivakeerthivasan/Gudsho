import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/common_widgets/primary_button.dart';
import 'package:gudsho/src/core/constants/sizes/app_sizes.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';

/// Placeholder widget showing a message and CTA to go back to the home screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            gapH32,
            PrimaryButton(
              onPressed: () => context.goNamed(AppRoute.signup.name),
              text: 'Go Home',
            )
          ],
        ),
      ),
    );
  }
}
