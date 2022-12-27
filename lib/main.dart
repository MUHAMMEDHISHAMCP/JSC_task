import 'package:flutter/material.dart';
import 'package:jsc_task/controller/music_controller.dart';
import 'package:jsc_task/view/home_view.dart';
import 'package:jsc_task/view/widgets/snack_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MusicListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: ShowDialogs.scaffoldMessengerKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
