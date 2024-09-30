import 'package:flutter/material.dart';
import 'lead_card.dart';

class LeadListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(0.0),
      itemCount: 2,
      itemBuilder: (context, index) {
        return LeadCard();
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Divider(color: Colors.grey, thickness: 1.0, height: 1.0),
        );
      },
    );
  }
}
