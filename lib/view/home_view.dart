import 'package:flutter/material.dart';
import 'package:jsc_task/view/music_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/home_bg.png'), fit: BoxFit.cover)),
        child: Center(
          // child: ElevatedButton(
          //   onPressed: () {
          // //    Provider.of<MusicListProvider>(context,listen: false).getAllMusic();
          //     Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) => const MusicListScreen(),
          //     ));
          //   },
          //   child: const Text('See'),
          // ),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MusicListScreen(),
              ));
            },
            child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 148, 135, 39).withOpacity(0.4),
                 
                         
                      borderRadius: const BorderRadius.all(
                        Radius.circular(40),
                      ),
                      border: Border.all(
                        color: Colors.white54,
                        width: 1.0,
                      ),
                    ),
                    child: const Icon(Icons.forward,size: 40,),
                  ),
          ),
        ),
      ),
    );
  }
}
