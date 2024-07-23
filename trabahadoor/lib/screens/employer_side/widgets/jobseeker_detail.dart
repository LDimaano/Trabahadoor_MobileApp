import 'package:flutter/material.dart';
import 'package:trabahadoor/models/jobseeker.dart';

class JobDetailemp extends StatelessWidget {
  final Jobseeker job;
  const JobDetailemp(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              job.logoUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(job.company,
                            style: const TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          job.isMark
                              ? Icons.bookmark
                              : Icons.bookmark_outline_rounded,
                          color: job.isMark
                              ? Theme.of(context).primaryColor
                              : Colors.black,
                        ),
                        const Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  job.title,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 8.0),
                        Text(job.location),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_filled_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 8.0),
                        Text(job.time),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Requirements',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...job.skills.map((e) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: Text(
                            e,
                            style: const TextStyle(
                              wordSpacing: 2.5,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ))),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Experience',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...job.exp.map((e) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: Text(
                            e,
                            style: const TextStyle(
                              wordSpacing: 2.5,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ))),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {},
                    child: const Text('Apply Now!'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
