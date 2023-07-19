import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridViewStackScreen(),
  debugShowCheckedModeBanner: false,
  ));
}

class GridViewStackScreen extends StatelessWidget {
  static String id = 'GridView_StackScreen';
  List contentList = [
    [
      "https://media.istockphoto.com/id/1279654034/photo/studio-microphone-and-pop-shield-on-mic-in-the-empty-recording-studio-with-copy-space.webp?b=1&s=170667a&w=0&k=20&c=bw8TATpYbFE6vaX6czvC0WJJA_i_NsUijRG8Z0V-UDs=",
      'POP MUSIC'
    ],
    [
      'https://media.istockphoto.com/id/1502967290/photo/old-cd-player.webp?b=1&s=170667a&w=0&k=20&c=5sQ02ZA4UrFi1MR_91naVkESNZ7XHaNJL5MrSsZ75js=',
      'CAR MUSIC'
    ],
    [
      'https://media.istockphoto.com/id/1342504537/photo/black-young-woman-filming-herself-dancing-at-home-to-share-on-social-media.webp?b=1&s=170667a&w=0&k=20&c=fhCfM4P2lYe081jv37Y553dGzKuvZ3WmdgyGwdUBks0=',
      'TICKTOK MUSIC'
    ],
    [
      'https://media.istockphoto.com/id/1353775192/photo/golden-youtube-play-icon-with-the-red-luxury-boxes-and-white-spheres-3d-illustration-of-lux.webp?b=1&s=170667a&w=0&k=20&c=uN2pqhwskQM-9ctJs_vKUZwBrEhoFdpxLAUKMxVEtoA=',
      'Youtube music'
    ],
    [
      'https://media.istockphoto.com/id/1199243596/photo/concert-stage-on-rock-festival-music-instruments-silhouettes.webp?b=1&s=170667a&w=0&k=20&c=YyK_M2YtGirW4gQpdvP4pPuuEQ4UGNrtEWIlKcP6ze8=',
      'TOP 50'
    ],
    [
      'https://media.istockphoto.com/id/1324561072/photo/party-people-enjoy-concert-at-festival-summer-music-festival.webp?b=1&s=170667a&w=0&k=20&c=O5ZV-dsb8hWNxQMWyFa8bVwnebURDCbq29Ktw3DxJr0=',
      'MUsiciannnnn'
    ],
    [

      "https://media.istockphoto.com/id/1279654034/photo/studio-microphone-and-pop-shield-on-mic-in-the-empty-recording-studio-with-copy-space.webp?b=1&s=170667a&w=0&k=20&c=bw8TATpYbFE6vaX6czvC0WJJA_i_NsUijRG8Z0V-UDs=",
      'KAT MUSIC'
    ],
    [
      'https://media.istockphoto.com/id/1199243596/photo/concert-stage-on-rock-festival-music-instruments-silhouettes.webp?b=1&s=170667a&w=0&k=20&c=YyK_M2YtGirW4gQpdvP4pPuuEQ4UGNrtEWIlKcP6ze8=',
      'TOP 5'
    ],
    [

      "https://media.istockphoto.com/id/1279654034/photo/studio-microphone-and-pop-shield-on-mic-in-the-empty-recording-studio-with-copy-space.webp?b=1&s=170667a&w=0&k=20&c=bw8TATpYbFE6vaX6czvC0WJJA_i_NsUijRG8Z0V-UDs=",
      'STAR MUSIC'
    ],
    [
      'https://media.istockphoto.com/id/1502967290/photo/old-cd-player.webp?b=1&s=170667a&w=0&k=20&c=5sQ02ZA4UrFi1MR_91naVkESNZ7XHaNJL5MrSsZ75js=',
      'CAR MUSIC'
    ],
    [
      'https://media.istockphoto.com/id/1199243596/photo/concert-stage-on-rock-festival-music-instruments-silhouettes.webp?b=1&s=170667a&w=0&k=20&c=YyK_M2YtGirW4gQpdvP4pPuuEQ4UGNrtEWIlKcP6ze8=',
      'TOP 50'
    ],
    [
      'https://images.pexels.com/photos/1717070/pexels-photo-1717070.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Eglow music'
    ],
    [

      "https://media.istockphoto.com/id/1279654034/photo/studio-microphone-and-pop-shield-on-mic-in-the-empty-recording-studio-with-copy-space.webp?b=1&s=170667a&w=0&k=20&c=bw8TATpYbFE6vaX6czvC0WJJA_i_NsUijRG8Z0V-UDs=",
      'POP MUSIC'
    ],
    [
      'https://images.pexels.com/photos/8285167/pexels-photo-8285167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'chill'
    ],
    [
      'https://media.istockphoto.com/id/1199243596/photo/concert-stage-on-rock-festival-music-instruments-silhouettes.webp?b=1&s=170667a&w=0&k=20&c=YyK_M2YtGirW4gQpdvP4pPuuEQ4UGNrtEWIlKcP6ze8=',
      'Thykoodam bride'
    ],
    [
      'https://images.pexels.com/photos/313782/pexels-photo-313782.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'New site'
    ],
    [
      'https://images.pexels.com/photos/11259542/pexels-photo-11259542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'vedio'
    ],
    [
      'https://images.pexels.com/photos/11448162/pexels-photo-11448162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'REAL music'
    ],
    [
      'https://media.istockphoto.com/id/1502967290/photo/old-cd-player.webp?b=1&s=170667a&w=0&k=20&c=5sQ02ZA4UrFi1MR_91naVkESNZ7XHaNJL5MrSsZ75js=',
      'CAR MUSIC'
    ],
    [
      'https://images.pexels.com/photos/711193/pexels-photo-711193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '05-05'
    ],
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xff121212),
          floating: true,
        pinned: false,
        title: Center(child: Text("PlayLists",style: TextStyle(color: Color(0xfff8b3c2)),)),
        bottom: AppBar(
          backgroundColor: Color(0xff121212),
          elevation: 0,
          title: Container(
          width: double.infinity,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: "Search...",
                hintStyle: TextStyle(color: Color(0xfff8b3c2)),
                suffixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
              ),

            ),
        ),
      ),
      ),

         SliverGrid.builder(
         // padding: const EdgeInsets.all(20),
          itemCount: contentList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 150,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) =>
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            contentList[index][0],
                          )
                      ),
                      // child: ClipRRect(
                      //   borderRadius: BorderRadius.circular(8.0),
                      //   child: Image.network(
                      //     contentList[index][0],
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      contentList[index][1],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
        ),
      ],
    ),
    );


  }
}
