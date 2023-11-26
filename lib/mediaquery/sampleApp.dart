import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MediaQueryExample(),
  ));
}
class MediaQueryExample extends StatefulWidget {
  @override
  State createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  late MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));

    media = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MediaQuery ',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Device Info',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _text('Height: ${media.size.height}'),
          _text('Width: ${media.size.width}'),
          _text('Device Pixel Ratio: ${media.devicePixelRatio}'),
          _text('Brightness: ${MediaQuery.platformBrightnessOf(context)}'),
          _text('System View Insets: ${media.viewInsets}'),
          _text('System Padding: ${media.padding}'),
          _text('System View Padding: ${media.viewPadding}'),
          _text('System Gesture Insets: ${media.systemGestureInsets}'),
          _text('Always 24 Hours: ${media.alwaysUse24HourFormat}'),
          _text('Accessible Navigation: ${media.accessibleNavigation}'),
          _text('Inverting Colors: ${media.invertColors}'),
          _text('In High Contrast: ${MediaQuery.highContrastOf(context)}'),
          _text('Disable Animation: ${media.disableAnimations}'),
          _text('In Bold Text: ${MediaQuery.boldTextOverride(context)}'),
          _text('Navigation Mode: ${media.navigationMode}'),
          _text('Orientation: ${media.orientation}'),
        ],
      ),
    );
  }

  /// Text widget
  Widget _text(String text) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
      );
}
