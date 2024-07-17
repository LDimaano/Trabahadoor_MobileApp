import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/search/widgets/search_app_bar.dart';
import 'package:trabahadoor/screens/search/widgets/search_input.dart';
import 'package:trabahadoor/screens/search/widgets/search_list.dart';
import 'package:trabahadoor/screens/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 247, 255, 1.0),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchAppBar(),
                const SearchInput(),
                const SearchOption(),
                Expanded(child: SearchList()),
              ],
            )
          ],
        ));
  }
}
