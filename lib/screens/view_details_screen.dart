import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:expandable/expandable.dart';

class ViewDetailsScreen extends StatefulWidget {
  @override
  _ViewDetailsScreenState createState() => _ViewDetailsScreenState();
}

class _ViewDetailsScreenState extends State<ViewDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Text(
          'New Leads',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.red,
          tabs: [
            Tab(text: "Living Room"),
            Tab(text: "Bed Room"),
            Tab(text: "Custom Items"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildExpandableSectionWithItems(
              'Living Room',
              Icons.chair, // Icon for Living Room
              [
                _buildItemRowWithIcon(
                    Icons.weekend, 'L Type Sofa', 'Small | Leather', 1),
                _buildItemRowWithIcon(
                    Icons.chair, 'Single Seater Sofa', 'Large | Wooden', 1),
                _buildItemRowWithIcon(
                    Icons.table_bar, 'Tea Table', 'Medium | Wooden', 1),
                _buildItemRowWithIcon(
                    Icons.tv, 'Entertainment Unit', 'Medium | Wooden', 1),
                _buildItemRowWithIcon(
                    Icons.event_seat, 'Wooden Chairs', 'Small', 2),
                _buildItemRowWithIcon(
                    Icons.swipe, 'Swing', 'Large | Wooden', 1),
                _buildItemRowWithIcon(
                    Icons.chair_alt, 'Foldable Chairs', 'Small | Steel', 4),
              ]),
          _buildExpandableSectionWithItems(
              'Bed Room',
              Icons.bed, // Icon for Bed Room
              [
                _buildItemRowWithIcon(
                    Icons.bed, 'Bed', 'King Size | Wooden', 1),
                _buildItemRowWithIcon(
                    Icons.error, 'Wardrobe', 'Large | Wooden', 2),
              ]),
          _buildExpandableSectionWithItems(
              'Custom Items',
              Icons.widgets, // Icon for Custom Items
              [
                _buildCustomItem(
                    'Antique Clock',
                    '200 year old British Period wooden perpetual clock, very unique and rare clock',
                    'L: 6 ft',
                    'W: 6 ft',
                    'H: 6 ft',
                    Icons.access_time_filled), // Icon for Antique Clock
                SizedBox(height: 16),
                _buildCustomItem(
                    'Antique Clock',
                    '200 year old British Period wooden perpetual clock, very unique and rare clock',
                    'L: 6 ft',
                    'W: 6 ft',
                    'H: 6 ft',
                    Icons.access_time), // Another icon for Antique Clock
              ]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: 1, // Assuming "Leads" is selected
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
    );
  }

  // Helper method for expandable sections with icon
  Widget _buildExpandableSectionWithItems(
      String title, IconData icon, List<Widget> children) {
    return ExpandablePanel(
      header: Row(
        children: [
          Icon(icon, color: Colors.red, size: 24), // Add the icon
          SizedBox(width: 8), // Add some spacing between the icon and title
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: title == 'Bed Room' ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
      collapsed: SizedBox.shrink(),
      expanded: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  // Helper method for building rows of items with icons
  Widget _buildItemRowWithIcon(
      IconData itemIcon, String itemName, String description, int quantity) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(itemIcon, color: Colors.red, size: 24), // Add item icon
              SizedBox(width: 8), // Add spacing between icon and item name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Text(
            quantity.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Helper method for custom items with icons and size details
  Widget _buildCustomItem(String itemName, String description, String length,
      String width, String height, IconData itemIcon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(itemIcon,
                color: Colors.red, size: 24), // Add icon for custom item
            SizedBox(width: 8),
            Text(
              itemName,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            _buildDimensionBox(length),
            SizedBox(width: 8),
            _buildDimensionBox(width),
            SizedBox(width: 8),
            _buildDimensionBox(height),
          ],
        )
      ],
    );
  }

  // Helper method for dimension boxes
  Widget _buildDimensionBox(String dimension) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey[400]!),
      ),
      child: Text(
        dimension,
        style: TextStyle(
          fontSize: 14,
          color: Colors.red,
        ),
      ),
    );
  }
}
