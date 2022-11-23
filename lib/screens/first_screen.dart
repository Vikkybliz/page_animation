import 'package:flutter/material.dart';
import 'package:page_route_animator/page_route_animator.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(child: const Text('Go to Second Screen'), onPressed: () {
          Navigator.push(context, PageRouteAnimator(child: const SecondScreen(), routeAnimation: RouteAnimation.leftToRightWithRotation, duration: const Duration(seconds: 3)));
        },),
      )
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
    );
  }
}

