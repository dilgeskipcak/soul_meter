import 'package:flutter/material.dart';
import 'package:soul_meter/constants/constants.dart';
import 'package:soul_meter/widgets/text_boxs/data_text_box.dart';

class SteamDataInfoWidget extends StatelessWidget {
  String image;

  SteamDataInfoWidget(String image) {
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        //backgroundColor: Colors.blueGrey[900],
        child: Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          ClipPath(
            clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                //color: Colors.transparent,
                border: Border(
                  right: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  left: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Top 5 Most Played Games",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40,
                            color: Colors.grey[500])),
                    DataInfoTextBox(
                      rateResultAllData['steam']
                          ['user1_games_sorted_by_playing_time'][0]['name'],
                      rateResultAllData['steam']
                          ['user1_games_sorted_by_playing_time'][1]['name'],
                      rateResultAllData['steam']
                          ['user1_games_sorted_by_playing_time'][2]['name'],
                      rateResultAllData['steam']
                          ['user1_games_sorted_by_playing_time'][3]['name'],
                      rateResultAllData['steam']
                          ['user1_games_sorted_by_playing_time'][4]['name'],
                    ),
                    Text("Top 5 Genres",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40,
                            color: Colors.grey[500])),
                    DataInfoTextBox(
                        rateResultAllData['steam']
                                ['user1_steam_genres_sorted_by_playing_time'][0]
                            ['genre'],
                        rateResultAllData['steam']
                                ['user1_steam_genres_sorted_by_playing_time'][1]
                            ['genre'],
                        rateResultAllData['steam']
                                ['user1_steam_genres_sorted_by_playing_time'][3]
                            ['genre'],
                        rateResultAllData['steam']
                                ['user1_steam_genres_sorted_by_playing_time'][4]
                            ['genre'],
                        rateResultAllData['steam']
                                ['user1_steam_genres_sorted_by_playing_time'][5]
                            ['genre']),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: -MediaQuery.of(context).size.height / 15,
              child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: MediaQuery.of(context).size.height / 17,
                  child: Image.network(
                    rateResultAllData['steam']['user1_steam_summaries']
                        ['avatarfull'],
                    fit: BoxFit.fill,
                  ))),
        ],
      ),
    ));
  }
}
