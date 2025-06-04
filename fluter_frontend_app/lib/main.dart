import 'package:flutter/material.dart';

void main() => runApp(LocationRecommendationApp());

class LocationRecommendationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location-Based App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _currentLocation = "Unknown";
  List<String> _nearbyPlaces = [
    "Cafe Aroma",
    "Parkside Gym",
    "Sunset Garden",
    "Book World"
  ];
  String _status = "Idle";

  void _simulateLocationFetch() {
    setState(() {
      _currentLocation = "Lat: 37.4219, Lon: -122.0840";
    });
  }

  void _simulateProximityAlert() {
    setState(() {
      _status = "Near: Cafe Aroma";
    });
  }

  void _simulateSync() {
    setState(() {
      _status = "Data Synced with Firebase";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby Recommendations"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Current Location:",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(_currentLocation, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _simulateLocationFetch,
              icon: Icon(Icons.location_on),
              label: Text("Get Location"),
            ),
            Divider(height: 40),

            // --- Placeholder for the Interactive Map ---
            Expanded( // Use Expanded to give the map flexible space
              child: Container( // Replace Container with your GoogleMap widget
                color: Colors.grey[300], // Placeholder color
                child: Center(child: Text("Interactive Map Goes Here")),
              ),
            ),
            // -----------------------------------------

            Divider(height: 40), // You might adjust or remove this divider
            Text("Nearby Places:", // You might want to integrate nearby places with the map
                style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded( // This Expanded might need adjustment depending on map size
              child: ListView.builder(
                itemCount: _nearbyPlaces.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.place),
                  title: Text(_nearbyPlaces[index]),
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: _simulateProximityAlert,
                    child: Text("Simulate Alert")),
                ElevatedButton(
                    onPressed: _simulateSync, child: Text("Cloud Sync")),
              ],
            ),
            SizedBox(height: 10),
            Text("Status: $_status",
                style: TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
