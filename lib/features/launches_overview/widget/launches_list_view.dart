import 'package:flutter/material.dart';
import 'package:space_x/api/model/launch.dart';
import 'package:space_x/features/launches_overview/widget/launch_card.dart';
import 'package:space_x/utilities/widgets/spacing.dart';

class LaunchesListView extends StatelessWidget {
  const LaunchesListView({
    required this.launches,
    // this.shouldShowFallbackLabel = false,
    super.key,
  });

  final List<Launch> launches;
  // final bool shouldShowFallbackLabel;

  @override
  Widget build(BuildContext context) {
    if (launches.isEmpty) return const Spacer();

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final launch = launches[index];
        return LaunchCard(launch: launch);
      },
      separatorBuilder: (context, index) => const VerticalSpace(height: 20.0),
      itemCount: launches.length,
    );
  }
}
