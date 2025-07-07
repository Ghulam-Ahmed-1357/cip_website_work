// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: HomePage());
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController _nameController = TextEditingController();
//   String? savedName;

//   // Save name to SharedPreferences
//   Future<void> saveName() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('name', _nameController.text);
//     setState(() {
//       savedName = _nameController.text;
//     });
//   }

//   // Load name from SharedPreferences
//   Future<void> loadName() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       savedName = prefs.getString('name');
//     });
//   }

//   // Clear saved name
//   Future<void> clearName() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove('name');
//     setState(() {
//       savedName = null;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     loadName(); // Load saved data on app start
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Shared Preferences Example")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: const InputDecoration(labelText: "Enter your name"),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(onPressed: saveName, child: const Text("Save Name")),
//             ElevatedButton(onPressed: loadName, child: const Text("Load Name")),
//             ElevatedButton(
//               onPressed: clearName,
//               child: const Text("Clear Name"),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               savedName != null
//                   ? "Saved Name: $savedName"
//                   : "No name saved yet.",
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
