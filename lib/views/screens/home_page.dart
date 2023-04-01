import 'package:flutter/material.dart';
import 'package:flutter_vorlesung/views/widgets/home/button_group.dart';
import 'package:flutter_vorlesung/views/widgets/home/hit_counter.dart';
import 'package:flutter_vorlesung/views/widgets/home/name_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        HitCounter(),
        ButtonGroup(),
        NameField(),
      ],
    );
  }
}