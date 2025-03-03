import 'package:flutter/material.dart';
import 'package:sports/features/home/presentation/views/widgets/custom_drop_down.dart';
import 'package:sports/features/home/presentation/views/widgets/custom_text_field.dart';

class FormBody extends StatelessWidget {
  const FormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTextField(label: "Label", hint: "Hint Text..."),
        CustomTextField(label: "Label", hint: "Hint Text..."),
        CustomDropdown(
          label: "label",
          hint: "Hint Text...",
          onChanged: (value) {},
          items: ["Item1", "Item2", "Item3", "Item4"],
        ),
        CustomTextField(label: "Label", hint: "Hint Text..."),
        CustomTextField(label: "Label", hint: "Hint Text..."),
      ],
    );
  }
}