import 'package:flutter/material.dart';
import 'package:trabahadoor/models/job.dart';
import 'package:trabahadoor/screens/search/widgets/search_item.dart';
import 'package:trabahadoor/screens/search/widgets/search_detail.dart';

class SearchList extends StatelessWidget {
  final jobList = Job.generateJobs();

  SearchList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetail(jobList[index]));
              },
              child: JobItem(jobList[index])),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
