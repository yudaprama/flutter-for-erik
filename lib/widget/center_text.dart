import 'package:flutter/material.dart';

Widget CustomRow({mainAxisAlignment, label, onPressed}) {
	return Row(
		mainAxisAlignment: mainAxisAlignment,
		children: <Widget>[
			Text("1"),
			Text("2"),
			Text("3"),
			RaisedButton(
				onPressed: onPressed,
				child: Text(label),
			),
		],
	);
}

Widget centerText({
	String label,
	onPressedTopButton,
	onPressedBottomButton
}) {
	return Column(
		children: <Widget>[
			CustomRow(
				mainAxisAlignment: MainAxisAlignment.end,
				label: label,
				onPressed: onPressedTopButton
			),
			CustomRow(
				mainAxisAlignment: MainAxisAlignment.start,
				label: label,
				onPressed: onPressedBottomButton
			)
		],
	);
}