import 'package:flutter/material.dart';
import 'package:jsc_task/model/music_list_model.dart';

class DetailsScreen extends StatelessWidget {
 const DetailsScreen({super.key, required this.musicDetails});

  final Result musicDetails;

  @override
  Widget build(BuildContext context) {
    DateTime? releaseDate = musicDetails.releaseDate;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Song Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 8),
                      blurRadius: 50,
                      color: const Color.fromARGB(255, 21, 57, 119).withOpacity(0.9),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                    // alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: NetworkImage(musicDetails.artworkUrl30 ??
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5UQHfPaB88h5sZKKM629V5wY4bJG4LhPu9u4yGcgu1ldQ8C74SSq4YFOrnruOrgTjlKc&usqp=CAU"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 8),
                          blurRadius: 50,
                          color: Colors.black.withOpacity(0.2),
                        )
                      ]),
                  child: const Icon(
                    Icons.play_arrow_outlined,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 8),
                        blurRadius: 50,
                        color: Colors.white.withOpacity(0.2),
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                ),
              ],
            ),
            // kHeight10,
            const SizedBox(
              height: 15,
            ),
            Text(
              musicDetails.trackName ?? "No TrackName",
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              musicDetails.artistName ?? "Artist Name Not available",
              style: const TextStyle(fontSize: 20, color: Colors.white54),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Discription",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              musicDetails.longDescription ?? "Descrotion Not Available",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
  const Text(
              "Release Date :-",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          const  Spacer(),
            Text(
              releaseDate == null ? 'Date Not Avilable':
              '${releaseDate.day} - '
              '${releaseDate.month} - '
              '${releaseDate.year}',
              style:
                  TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 20),
            ),
              ],
            ),
              const SizedBox(
              height: 10,
            ),
            const Text(
              "Collection Name",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              musicDetails.collectionName ?? "Name Not Available",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
