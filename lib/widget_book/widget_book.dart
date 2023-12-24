import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_tutorial/widget_book/usecases/first_screen.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.App()
class WidgetBooks extends StatelessWidget {
  const WidgetBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookCategory(
          name: 'Test',
          children: [
            WidgetbookComponent(
              name: 'First Component',
              useCases: [
                WidgetbookUseCase(
                  name: 'First Usecase',
                  builder: (context) {
                    return const FirstScreen();
                  },
                )
              ],
            )
          ],
        ),
      ],
      addons: [
        DeviceFrameAddon(devices: Devices.all)
      ],
    );
  }
}
