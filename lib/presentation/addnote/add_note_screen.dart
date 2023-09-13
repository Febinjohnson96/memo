import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memo/gen/assets.gen.dart';
import 'package:memo/presentation/addnote/add_note_controller.dart';
import 'package:memo/widgets/app_button.dart';
import 'widget/add_note_description_widget.dart';
import 'widget/add_note_title_widget.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AddnoteController>(
          init: AddnoteController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.images.addnote.addnote.path,
                        height: 200.h,
                      ),
                      AddNoteTitleWidget(
                        controller: controller.titleController,
                        hint: 'Add Title',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AddNoteDescription(
                        controller: controller.discriptionController,
                        hint: 'Add Description',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppButton(
                        title: 'Add notes',
                        callback: () => controller.addNotesToCache(
                            title: controller.titleController.text,
                            discription: controller.discriptionController.text),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
