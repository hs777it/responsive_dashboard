import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
