import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  final String errorMessage;const 
  ErrorScreen({super.key, required this.errorMessage});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const  Icon(size: 150, color: AppColors.mainColor, Icons.error_rounded),
            Text(
              // errorMessage == null ? 'unknown error !!!' : errorMessage!,

              widget.errorMessage,
              style: const TextStyle(
                color: AppColors.mainColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
