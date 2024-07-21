import 'package:flutter/material.dart';
import 'package:trabahadoor/models/jobseeker.dart';
import 'package:trabahadoor/screens/employer_side/widgets/jobseeker_detail.dart';
import 'package:trabahadoor/screens/employer_side/widgets/jobseeker_item.dart';

class JobList extends StatelessWidget {
  final jobList = Jobseeker.generateJobs();

  JobList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetailemp(jobList[index]));
              },
              child: JobItem(jobList[index])),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
