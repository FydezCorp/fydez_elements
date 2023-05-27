import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class BlocksDemoPage extends StatelessWidget {
  const BlocksDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Search Bar Demo'),
            const Gap(20.0),
            FySearchBar.create(
              context,
              type: SearchBarType.simple,
              placeholder: 'placeholder',
              onSearchTapped: () {
                log('Search Tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}
