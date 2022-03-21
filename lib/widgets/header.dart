import 'package:flutter/widgets.dart';
import 'package:mathkiddie/utils.dart';
import 'package:mathkiddie/widgets/flight_shuttle_builder.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage('assets/images/arrowleft.png'),
          ),
        ),
        const Hero(
          flightShuttleBuilder: flightShuttleBuilder,
          tag: 'title',
          child: Text('mathkiddie', style: AppTextStyle.helper),
        ),
        const SizedBox(), // Empty space
      ],
    );
  }
}
