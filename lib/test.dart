import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Card;
import 'package:motion/motion.dart';

import 'package:workspace/widgets/common_widgets/app_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Motion.instance.initialize();

  /// Globally set the sensors sampling rate to 60 frames per second.
  Motion.instance.setUpdateInterval(60.fps);
  runApp(MaterialApp(
    home: Test(),
  ));
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  TextEditingController urlText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (Motion.instance.isPermissionRequired &&
        !Motion.instance.isPermissionGranted) {
      showPermissionRequestDialog(
        context,
        onDone: () {
          setState(() {});
        },
      );
    }

    return Scaffold(
        body: Stack(children: [
          Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(
                      'Motion example',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    )),
                const Card(width: 280, height: 170, borderRadius: BorderRadius.all(Radius.circular(25))),
                Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Text(
                      'without Motion',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                Motion.elevated(
                  elevation: 70,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: const Card(
                      width: 280, height: 170, borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'with Motion',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ]))
        ]));
  }

  Future<void> showPermissionRequestDialog(BuildContext context,
      {required Function() onDone}) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Permission required'),
          content: const Text(
              'On iOS 13+, you need to grant access to the gyroscope. A permission will be requested to proceed.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Motion.instance.requestPermission();
              },
              child: const Text('OK'),
            ),
          ],
        ));
  }
}

class Card extends StatelessWidget {
  final int width, height;
  final BorderRadius borderRadius;

  const Card(
      {super.key,
        required this.width,
        required this.height,
        required this.borderRadius});

  @override
  Widget build(BuildContext context) => Container(
      width: width.toDouble(),
      height: height.toDouble(),
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: const Color.fromARGB(255, 45, 45, 45)),
      child: _buildShortDummyParagraph());

  Widget _buildShortDummyParagraph() => Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDummyLine(1),
        const SizedBox(height: 5),
        _buildDummyLine(0.98),
        const SizedBox(height: 5),
        _buildDummyLine(0.95),
        const SizedBox(height: 5),
        _buildDummyLine(0.6),
      ]);

  Widget _buildDummyLine(double widthFactor) => FractionallySizedBox(
      widthFactor: widthFactor,
      child: Container(
          height: 20, color: const Color.fromARGB(100, 255, 255, 255)));
}
