import 'package:flutter/material.dart';
import 'package:manga_webtoon/src/detail/components/detail_header_widget.dart';
import 'package:manga_webtoon/src/home/components/bottom_bar_widget.dart';

class DetailPageArguments {
  final String urlImage;
  final String title;
  final String synopsis;

  DetailPageArguments({
    required this.urlImage,
    required this.title,
    required this.synopsis,
  });
}

class DetailPage extends StatefulWidget {
  final DetailPageArguments arguments;

  const DetailPage({
    super.key,
    required this.arguments,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailHeaderWidget(
            urlImage: widget.arguments.urlImage,
            title: widget.arguments.title,
            synopsis: widget.arguments.synopsis,
          ),
          const Padding(
              padding: EdgeInsets.all(9.0),
              child: Text('Chapters',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold))),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 96,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: const ListTile(
                    title: Text('Chapter 1068',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 96,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.red, style: BorderStyle.solid, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const ListTile(
                    title: Text('Chapter 1068',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 96,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.red, style: BorderStyle.solid, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const ListTile(
                    title: Text('Chapter 1069',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ), 
            BottomBarWidget(
      items: [
        BottomBarItem(
          icon: Icons.home_outlined,
          onTap: () {},
        ),
        BottomBarItem(
          icon: Icons.favorite_border,
          onTap: () {},
        ),
        BottomBarItem(
          icon: Icons.explore_outlined,
          onTap: () {},
        ),
      ],
    );
          )
        ],
      ),
    
    );
  }
}
