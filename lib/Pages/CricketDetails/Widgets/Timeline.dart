import 'package:flutter/material.dart';
class TimelineScreen extends StatelessWidget {
  final String TimeLinestatus ;
  const TimelineScreen({super.key, required this.TimeLinestatus,});
  @override
  Widget build(BuildContext context) {
    // Split the status into individual events
    List<String> timelineEvents = TimeLinestatus.split('|');

    return Scaffold(
      appBar: AppBar(
        title: Text('Match Timeline',
          style: TextStyle(fontSize: 30,
              color:Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,

      ),
      body: ListView.builder(
        itemCount: timelineEvents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.timeline),
            title: Text(
              "At Overs "+timelineEvents[index].trim(), // Remove any extra whitespace
              style: TextStyle(fontSize: 16,
                  color:Theme.of(context).colorScheme.onSurface
              ),
            ),
          );
        },
      ),
    );
  }
}

