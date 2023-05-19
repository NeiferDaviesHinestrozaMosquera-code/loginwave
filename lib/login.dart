import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class AnimatedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              gradients: [
                [Colors.blue, Colors.lightBlue.shade200],
                [Colors.blue.shade800, Colors.blue.shade400],
                [Colors.deepPurple.shade900, Colors.purple.shade500],
              ],
              durations: [35000, 19440, 10800],
              heightPercentages: [0.20, 0.23, 0.25],
              blur: MaskFilter.blur(BlurStyle.solid, 10),
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            waveAmplitude: 0,
            size: Size(double.infinity, double.infinity),
          ),
          SafeArea(
            child: Column(
              children: [
                AppBar(
                  title: Text('Animated AppBar'),
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    },
                    itemCount: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}