import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class SearchBar extends StatelessWidget {
  final String hint;
  final bool searchable;
  final bool autofocus;

  SearchBar({
    Key? key,
    this.hint = 'pencarian',
    this.searchable = true,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);

    return Container(
      height: dp.size(75),
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F0),
        borderRadius: BorderRadius.all(
          Radius.circular(35),
        ),
      ),
      child: TextField(
        autofocus: autofocus,
        textInputAction: TextInputAction.search,
        enabled: searchable,
        onSubmitted: (data) {},
        decoration: InputDecoration(
          prefixIcon: Container(
            child: Icon(
              Icons.search,
              size: dp.size(38),
              color: Color(0xFF3AB648),
            ),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(dp.size(1)),
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xFF010101).withOpacity(0.21),
          ),
        ),
        style: TextStyle(
          color: Color(0xFF010101),
          fontSize: dp.size(27),
        ),
      ),
    );
  }
}
