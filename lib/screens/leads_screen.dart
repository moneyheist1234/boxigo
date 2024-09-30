import 'package:flutter/material.dart';
import '../widgets/lead_list_view.dart';

class LeadsScreen extends StatefulWidget {
  @override
  _LeadsScreenState createState() => _LeadsScreenState();
}

class _LeadsScreenState extends State<LeadsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text(
          'Leads',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.red,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'New'),
            Tab(text: 'Follow Up'),
            Tab(text: 'Booked'),
            Tab(text: 'In Transit'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        elevation: 8,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: 1,
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_alt_outlined), label: 'Leads'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_sharp), label: 'Reports'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: 'More'),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          LeadListView(), // for 'All'
          LeadListView(), // for 'New'
          LeadListView(), // for 'Follow Up'
          LeadListView(), // for 'Booked'
          LeadListView(), // for 'In Transit'
        ],
      ),
    );
  }
}
