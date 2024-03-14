import 'package:flutter/material.dart';
import 'package:space_x/api/model/launch.dart';
import 'package:space_x/utilities/widgets/app_text.dart';

class LaunchCard extends StatelessWidget {
  const LaunchCard({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: 180.0,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 50.0,
          width: 50.0,
          child: Image.network(launch.links.patch.large),
        ),
        const SizedBox(width: 20.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadlineSmallText(text: launch.name),
            SizedBox(
              width: 500.0,
              child: Text(
                launch.details ?? '',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
