import 'package:flutter/material.dart';
import 'package:flutter_project_may/statemanagement/provider/movieprovider.dart';
import 'package:flutter_project_may/statemanagement/screens/wishlist.dart';
import 'package:provider/provider.dart';

/// 4 methode
void main() {
  runApp(
    ChangeNotifierProvider<MovieProvider>(
      create: (Context) => MovieProvider(),
      child: MaterialApp(
        home: Homeee(),
      ),
    ),
  );
}

class Homeee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///watch means monitor the changes and updateit methode 4 il veunathu
    var movietowishlist = context.watch<MovieProvider>().wishmovie;
    var movies = context.watch<MovieProvider>().movies;

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>wishlist()));
                },
                icon: Icon(Icons.favorite),
                label: Text("WhishList ${movietowishlist.length}")),
            Expanded(
                child: ListView.builder(
                    itemCount: movies.length,

                    /// methode 4
                    itemBuilder: (context, index) {
                      final currentmovie = movies[index];
                      return Card(
                        /// 1 listile le class value edukunathu model classilninnu ane ene model nd provider cheyanam
                        child: ListTile(
                          title: Text(currentmovie.title),
                          subtitle: Text(currentmovie.time??'No Time'),
                          trailing: IconButton(
                              onPressed: () {
                                if(!movietowishlist.contains(currentmovie)){
                                  context.read<MovieProvider>().addtolist(currentmovie);
                                }else{
                                  context.read<MovieProvider>().removefromlist(currentmovie);
                                }
                              },
                              icon: Icon(Icons.favorite,color:movietowishlist.contains(currentmovie)?
                      Colors.red:
                      Colors.white70,
                              ) ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
