import 'package:flutter/material.dart';

class Pasttimeline extends StatelessWidget {
  final PastTimeLinestatus ;
  const Pasttimeline({super.key, required this.PastTimeLinestatus});
  // Split the status into individual events

  @override
  Widget build(BuildContext context) {
    List<String> PasttimelineEvents = PastTimeLinestatus.split('|');
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
        itemCount: PasttimelineEvents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.timeline),
            title: Text(
              "At Overs "+PasttimelineEvents[index].trim(), // Remove any extra whitespace
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
