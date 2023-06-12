import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({
    super.key,
  });

  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  SearchBarType type = SearchBarType.simple;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Search Bar Block'),
        DropdownButton<SearchBarType>(
          items: SearchBarType.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              type = value!;
            });
          },
          value: type,
        ),
        const Gap(20.0),
        FySearchBarBlock.create(
          context,
          type: type,
          placeholder: 'Search products...',
          onSearchTapped: () {
            log('Search Tapped');
          },
        ),
      ],
    );
  }
}
