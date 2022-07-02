import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Raised Button',
	theme: ThemeData(
		primarySwatch: Colors.blue,
	),
	home: const MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String istapped = '';
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text('GeeksforGeeks'),
		backgroundColor: Colors.green,
	),
	body: Center(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: <Widget>[
			// RaisedButton has been deprecated
			// We can use Elevated button achieve the same results
			RaisedButton(
			//	 disabledColor: Colors.red,
			// disabledTextColor: Colors.black,
			padding: const EdgeInsets.all(20),
			textColor: Colors.white,
			color: Colors.green,
			onPressed: () {
				setState(() {
				istapped = 'Button tapped';
				});
			},
			child: const Text('Enabled Button'),
			),
			const SizedBox(
			height: 20,
			),
			// ElevatedButton
			ElevatedButton(
				style: ButtonStyle(
					backgroundColor: MaterialStateProperty.all(Colors.green),
					padding:
						MaterialStateProperty.all(const EdgeInsets.all(20)),
					textStyle: MaterialStateProperty.all(
						const TextStyle(fontSize: 14, color: Colors.white))),
				onPressed: () {
				setState(() {
					istapped = 'Button tapped';
				});
				},
				child: const Text('Enabled Button')),
			const SizedBox(height: 20),
			Text(
			istapped,
			textScaleFactor: 2,
			)
		],
		),
	),
	backgroundColor: Colors.lightBlue[50],
	);
}
}
