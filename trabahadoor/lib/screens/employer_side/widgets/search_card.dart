import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/search_empside/search_emp.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40,
      ),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage('asset/images/3.png'), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fast Search',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 10),
          const Text(' Find qualified candidates \n for your company',
              style: TextStyle(
                height: 1.8,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
            child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/icons/search.png',
                      width: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
