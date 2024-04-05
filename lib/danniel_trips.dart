import 'package:flutter/material.dart';
import 'package:tripix/home_trips.dart';
import 'package:tripix/profile.dart';
import 'package:tripix/search_trips.dart';

class DannielTrips extends StatefulWidget {
  const DannielTrips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DannielTrips();
  }
}

class _DannielTrips extends State<DannielTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const Profile()
  ];
  void onTapTapped(int index) {
    setState(() {
      // setState() is a method that allows you to refresh the screen
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: const [
                // BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
              ])),
    );
  }
}
