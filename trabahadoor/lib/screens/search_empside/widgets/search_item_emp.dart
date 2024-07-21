import 'package:flutter/material.dart';
import 'package:trabahadoor/models/jobseeker.dart';
import 'package:trabahadoor/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Jobseeker job;
  final bool showTime;
  const JobItem(this.job, {super.key, this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        job.logoUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    job.company,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                  job.isMark ? Icons.bookmark : Icons.bookmark_outline_outlined,
                  color: job.isMark
                      ? Theme.of(context).primaryColor
                      : Colors.black)
            ],
          ),
          const SizedBox(height: 15),
          Text(job.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(Icons.location_on_outlined, job.location),
              if (showTime) IconText(Icons.access_time_outlined, job.time),
            ],
          )
        ],
      ),
    );
  }
}
