import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/search_empside/widgets/search_app_bar_emp.dart';
import 'package:trabahadoor/screens/search_empside/widgets/search_input_emp.dart';
import 'package:trabahadoor/screens/search_empside/widgets/search_list_emp.dart';
import 'package:trabahadoor/screens/search_empside/widgets/search_option_emp.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
