import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memo/gen/assets.gen.dart';
import 'package:memo/presentation/empty/empty_screen_controller.dart';
import 'package:memo/utils/constants.dart';
import 'package:memo/widgets/app_button.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                Assets.images.emptyScreen.empty.path,
                height: 300,
              ),
            ),
            Text(
              emptyTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              emptyMessage,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 60,
            ),
            GetBuilder<EmptyScreenController>(
                init: EmptyScreenController(),
                builder: (controller) {
                  return AppButton(
                    title: "Add Note",
                    callback: () => controller.onTapAddNoteButton(),
                  );
                })
          ],
        ),
      ),
    );
  }
}
