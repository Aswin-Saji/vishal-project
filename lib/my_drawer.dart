import 'package:flutter/material.dart';

class AnimatedDrawer extends StatefulWidget {
  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer>
    with SingleTickerProviderStateMixin {
 late AnimationController _animationController;
  bool _isDrawerOpen = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
    if (_isDrawerOpen) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) {
        double slide = screenWidth * 0.6 * _animationController.value;
        return Transform.translate(
          offset: Offset(slide, 0),
          child: Container(
            width: screenWidth * 0.6,
            child: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Text('My App'),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
