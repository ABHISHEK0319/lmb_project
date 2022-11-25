import "package:flutter/material.dart";

class FancyButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  const FancyButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      onPressed: onPressed,
      // shape: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 8.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.payment,
              color: Colors.amber,
            ),
            SizedBox(width: 8.0),
            Text(
              "Proceed",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
