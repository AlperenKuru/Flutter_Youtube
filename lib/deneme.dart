import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class denemescreen extends StatelessWidget {
  const denemescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: AlertWithIcon()
            )
        )
    );
  }
}
class AlertWithIcon extends StatefulWidget {

  AlertWithIconWidget createState() => AlertWithIconWidget();
}

class AlertWithIconWidget extends State {

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "J-4GxyKjdl4",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      )
  );

  YoutubePlayerController _sitting = YoutubePlayerController(
      initialVideoId: "Ow1PTyTzmP0",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      )
  );

  CrossCrunches(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
              children:[
                Text('  Cross Crunches ')
              ]
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Dialog(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                child: Container(
                  width: 100.0,
                  height: 250.0,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.red,
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 150,
                  child: new Image.asset(
                    'assets/motion_images/leg/back_leg_motion/Single-legBenchHipThrustÖn.png',
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: 75,
                  height: 150,
                  child: new Image.asset(
                    'assets/motion_images/leg/back_leg_motion/Single-legBenchHipThrustArka.png',
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            FlatButton(
              child: Text("Ekle"),
              onPressed: () {
                //Put your code here which you want to execute on Yes button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  SidePlank(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
              children:[
                Text('  Cross Crunches ')
              ]
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Dialog(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                child: Container(
                  width: 100.0,
                  height: 250.0,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.red,
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 150,
                  child: new Image.asset(
                    'assets/motion_images/leg/back_leg_motion/Single-legBenchHipThrustÖn.png',
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: 75,
                  height: 150,
                  child: new Image.asset(
                    'assets/motion_images/leg/back_leg_motion/Single-legBenchHipThrustArka.png',
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            FlatButton(
              child: Text("Ekle"),
              onPressed: () {
                //Put your code here which you want to execute on Yes button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  SittingPunches(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
              children:[
                Text('  Cross Crunches ')
              ]
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0),
              child: Dialog(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                child: Container(
                  width: 100.0,
                  height: 250.0,
                  child: YoutubePlayer(
                    controller: _sitting,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.red,
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 150,
                  child: new Image.asset(
                    'assets/motion_images/leg/back_leg_motion/Single-legBenchHipThrustÖn.png',
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: 75,
                  height: 150,
                  child: new Image.asset(
                    'assets/motion_images/leg/back_leg_motion/Single-legBenchHipThrustArka.png',
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            FlatButton(
              child: Text("Ekle"),
              onPressed: () {
                //Put your code here which you want to execute on Yes button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors. red ,title: Text("Deneme"),titleTextStyle: TextStyle(fontFamily: 'Helvetica Neue',fontSize: 20)
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => CrossCrunches(context),
                  child: Text('Cross Crunches'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(140.0, 47.0),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.circular(30), bottomLeft: Radius.zero, bottomRight: Radius.circular(30) ) ),
                    primary: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => SidePlank(context),
                  child: Text('Side Plank'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(140.0, 47.0),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.circular(30), bottomLeft: Radius.zero, bottomRight: Radius.circular(30) ) ),
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => SittingPunches(context),
                  child: Text('Sitting Punches'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(140.0, 47.0),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.circular(30), bottomLeft: Radius.zero, bottomRight: Radius.circular(30) ) ),
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}