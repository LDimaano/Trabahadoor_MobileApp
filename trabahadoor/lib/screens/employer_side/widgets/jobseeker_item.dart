import 'package:flutter/material.dart';
import 'package:trabahadoor/models/jobseeker.dart';

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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(job.logoUrl),
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
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.black),
                  const SizedBox(width: 8.0),
                  Text(job.location),
                ],
              ),
              if (showTime)
                Row(
                  children: [
                    const Icon(Icons.access_time_outlined, color: Colors.black),
                    const SizedBox(width: 8.0),
                    Text(job.time),
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}
