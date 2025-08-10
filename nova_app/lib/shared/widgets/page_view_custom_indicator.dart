import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({

    this.marginEnd=0,
    required this.isCurrentPage,
    super.key,
  });

  final double marginEnd;
  final bool isCurrentPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 9,
      width: isCurrentPage ? 28 :9,
      decoration: BoxDecoration(
        color: isCurrentPage ? const Color(0xFFFF7750) : const Color(0xFFCACACA),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
