import 'circular_menu.dart';
import 'package:flutter/material.dart';

class AddTimerButton extends StatefulWidget {
  const AddTimerButton({Key? key}) : super(key: key);

  @override
  _AddTimerButtonState createState() => _AddTimerButtonState();
}

class _AddTimerButtonState extends State<AddTimerButton> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: FabCircularMenu(
        key: fabKey,
        // Cannot be `Alignment.center`
        alignment: Alignment.bottomRight,
        ringColor: Colors.red,
        ringDiameter: 150.0,
        ringWidth: 60.0,
        fabSize: 65.0,
        fabElevation: 2.0,
        fabIconBorder: const CircleBorder(),
        // Also can use specific color based on whether
        // the menu is open or not:
        // fabOpenColor: Colors.white
        // fabCloseColor: Colors.white
        // These properties take precedence over fabColor
        fabColor: Colors.white,
        fabOpenIcon: Icon(Icons.menu, color: primaryColor),
        fabCloseIcon: Icon(Icons.close, color: primaryColor),
        fabMargin: const EdgeInsets.all(0.0),
        animationDuration: const Duration(milliseconds: 800),
        animationCurve: Curves.easeInOutCirc,
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              _showSnackBar(context, "You pressed 3");
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: const Icon(Icons.looks_3, color: Colors.white),
          ),
          RawMaterialButton(
            onPressed: () {
              _showSnackBar(context, "You pressed 3");
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: const Icon(Icons.looks_3, color: Colors.white),
          ),
          RawMaterialButton(
            onPressed: () {
              _showSnackBar(context, "You pressed 3");
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: const Icon(Icons.looks_3, color: Colors.white),
          ),
          RawMaterialButton(
            onPressed: () {
              _showSnackBar(context, "You pressed 4. This one closes the menu on tap");
              fabKey.currentState!.close();
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: const Icon(Icons.looks_4, color: Colors.white),
          )
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(milliseconds: 1000),
        )
    );
  }
}
