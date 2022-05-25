import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';

class MainMenuScreen extends StatefulWidget {
  MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 8),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: double.infinity,
                  width: 150,
                  decoration: BoxDecoration(
                    color: bgColor,
                    image: DecorationImage(
                        image: AssetImage("assets/images/x.png")),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.blueAccent,
                    //     offset: const Offset(0, 10),
                    //     blurRadius: 5,
                    //     spreadRadius: 0.0,
                    //   ),
                    // ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 150,
                  decoration: BoxDecoration(
                    color: bgColor,
                    image: DecorationImage(
                      image: AssetImage("assets/images/o.png"),
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.orangeAccent,
                    //     offset: const Offset(0, 10),
                    //     blurRadius: 5,
                    //     spreadRadius: 0.0,
                    //   ),
                    // ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "Choose Your Play Mode",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: textColor),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: () {},
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: gradientButton,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 200,
                      height: 50,
                      constraints: const BoxConstraints(minWidth: 88.0),
                      child: Center(
                          child: const Text(
                        'With AI',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: () {},
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 200,
                      height: 50,
                      constraints: const BoxConstraints(minWidth: 88.0),
                      child: Center(
                          child: const Text(
                        'With a friend',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: textColor),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(0.0),
              elevation: 12,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Ink(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle
                      // borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
              child: Container(
                padding: const EdgeInsets.all(10),
                constraints: const BoxConstraints(minWidth: 88.0),
                child: Center(
                  child: const Icon(
                    Icons.settings,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
