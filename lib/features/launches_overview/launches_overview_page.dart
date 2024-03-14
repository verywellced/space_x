import 'package:flutter/material.dart';
import 'package:space_x/api/model/launch.dart';
import 'package:space_x/features/launches_overview/widget/launches_list_view.dart';
import 'package:space_x/utilities/async.dart';
import 'package:space_x/utilities/widgets/spacing.dart';

class LaunchesOverviewPage extends StatefulWidget {
  const LaunchesOverviewPage({
    required this.launches,
    required this.shouldShowFab,
    super.key,
  });

  final Async<List<Launch>> launches;
  final bool shouldShowFab;

  @override
  State<LaunchesOverviewPage> createState() => _LaunchesOverviewPageState();
}

class _LaunchesOverviewPageState extends State<LaunchesOverviewPage> {
  late bool isSearching;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: widget.launches.when(
            (data) => Center(child: LaunchesListView(launches: data)),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (errorMessage) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) => _showErrorMessageSnackbar(context, errorMessage ?? ''),
              );
              return const VerticalSpace(height: 20.0);
            },
          ),
        ),
      ),
    );
  }

  void _showErrorMessageSnackbar(BuildContext context, String errorMessage) {
    final snackBar = SnackBar(content: Text(errorMessage));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
