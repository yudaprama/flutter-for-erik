import 'package:flutter/material.dart';
import 'package:flutter_app/screen/first_screen.dart';
import 'package:flutter_app/widget/center_text.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text("Second Screen"),
	    ),
	    body: centerText(
		    label: Theme.of(context).platform != TargetPlatform.iOS ? "TargetPlatform.iOS true" : "TargetPlatform.iOS false",
		    onPressedTopButton: () {
			    Navigator.of(context).push(
				    MaterialPageRoute(builder: (BuildContext context) {
					    return FirstScreen();
				    })
			    );
		    },
		    onPressedBottomButton: () {
			    Scaffold.of(context).showSnackBar(SnackBar(content: Text("snack bar")));
		    }
	    ),
    );
  }
}
