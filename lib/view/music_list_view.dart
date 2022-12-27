import 'package:flutter/material.dart';
import 'package:jsc_task/controller/music_controller.dart';
import 'package:jsc_task/view/details_view.dart';
import 'package:provider/provider.dart';

class MusicListScreen extends StatelessWidget {
  const MusicListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Music List',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black54,
      body: Consumer<MusicListProvider>(
        builder: (context, value, child) => value.isLoading == true
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : value.allMusic.isEmpty ?Center(child: Text("No Music Available",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),): ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final musicList = value.allMusic[index];
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          musicDetails: musicList,
                        ),
                      ));
                    },
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        image: DecorationImage(
                          image: NetworkImage(musicList.artworkUrl30 ??
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5UQHfPaB88h5sZKKM629V5wY4bJG4LhPu9u4yGcgu1ldQ8C74SSq4YFOrnruOrgTjlKc&usqp=CAU"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                          color: Colors.white54,
                          width: 2.0,
                        ),
                      ),
                    ),
                    title: Text(
                      musicList.trackName ?? "No TrackName",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      musicList.artistName ?? "No ArtistNAme",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      thickness: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                itemCount: value.allMusic.length),
      ),
    );
  }
}
