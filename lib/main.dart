import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Image.network('https://i.pinimg.com/736x/55/d8/9f/55d89f8d4b38f10228c8b097457a9e6c.jpg'),

         const Padding(
           padding: EdgeInsets.all(16.0),
           child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
             hintText: 'Login'
           ),
           ),
         ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: 'Password'
            ),
            ),
          ),

          ElevatedButton(onPressed: (){}, child: const Text('Login'),
          ),

          TextButton(onPressed: (){}, child: const Text('Registration'))
        ],
      ),
    );
  }
}

