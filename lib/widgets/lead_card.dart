import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'icon_column.dart';

class LeadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Aug',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87),
                    ),
                    Text(
                      '23',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Text(
                      '23:45',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Bangalore',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Text(
                            'E53352',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        '1 MG-Lido Mall, Swami Vivekananda Road, Someshwarpura, Halasuru, Bengaluru, Karnataka',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                      ),
                      SizedBox(height: 10),
                      // Row for the down arrow and icons
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/custom_icons/down_arrow/down_arrow.svg',
                            color: Colors.red,
                            height: 45,
                            width: 5,
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconColumn(
                                    icon: Icons.add_home_work,
                                    label: '2 BHK',
                                    color: Colors.red),
                                SizedBox(width: 20),
                                IconColumn(
                                    icon: Icons.inventory_2,
                                    label: '70 items',
                                    color: Colors.red),
                                SizedBox(width: 20),
                                IconColumn(
                                    icon: Icons.archive,
                                    label: '20 boxes',
                                    color: Colors.red),
                                SizedBox(width: 20),
                                IconColumn(
                                    icon: Icons.place,
                                    label: '12.3 kms',
                                    color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bangalore',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '1 MG-Lido Mall, Swami Vivekananda Road, Someshwarpura, Halasuru, Bengaluru, Karnataka',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 50),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.red),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: Size(0, 36),
                              ),
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: Size(0, 36),
                              ),
                              child: Text(
                                'Submit Quote',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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
