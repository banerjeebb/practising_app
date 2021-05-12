import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white70,
                  ),
                  onPressed: () {})
            ],
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/wall.jpg',
                fit: BoxFit.cover,
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(50, 60, 60, 10),
                child: Text(
                  'Apple',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ));
          }))
        ],
      ),
    );
  }
}
