import 'package:app/app/app.dart';
import 'package:flutter/material.dart';

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            'ERROR',
          ),
        ),
      );
}
