import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sports/features/home/data/models/fields.dart';
import 'package:sports/features/home/presentation/views/widgets/custom_drop_down.dart';
import 'package:sports/features/home/presentation/views/widgets/custom_text_field.dart';

class FormBody extends StatelessWidget {
  FormBody({super.key, required this.fields});
  List<Fields> fields;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTextField(
          label: "Label",
          hint: "Hint Text...",
          keyboardType: TextInputType.text,
        ),
        CustomTextField(
          label: "Label",
          hint: "Hint Text...",
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: TextInputType.number,
        ),
        CustomDropdown(
          label: "label",
          hint: "Hint Text...",
          onChanged: (value) {},
          items: ["Item1", "Item2", "Item3", "Item4"],
        ),
        CustomTextField(
          label: "Label",
          hint: "DD/MM/YYYY",
          isDatePicker: true,
          keyboardType: TextInputType.datetime,
        ),
        CustomTextField(label: "Label", hint: "Hint Text..."),
      ],
    );
  }
}
