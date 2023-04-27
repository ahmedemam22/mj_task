import 'package:flutter/material.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/personal/personal_details_items.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/personal/personal_header.dart';
class PersonalShape extends StatelessWidget {
  const PersonalShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      PersonalHeader(),
      Expanded(child: PersonalDetailsItems())
    ],);
  }
}
