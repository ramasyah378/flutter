import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 120.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10.0),
                _StoryButton(),
                _buildStory('images/h3.jpg', 'Arifin'),
                _buildStory('images/h2.jpg', 'Roni'),
                _buildStory('images/h3.jpg', 'bima'),
                _buildStory('images/h4.jpg', 'messi'),
                _buildStory('images/h5.jpg', 'ulpo'),
                _buildStory('images/h6.jpg', 'agung'),
              ],
            ),
          ),
          Divider(),
          _Post(
            username: 'ramaa',
            caption: 'Happy Koding',
            imageUrl: 'https://picsum.photos/300/205',
          ),
          _Post(
            username: 'ramatok',
            caption: 'Selamat Mumet',
            imageUrl: "https://picsum.photos/536/354",
          ),
          _Post(
            username: 'Ramaakkk',
            caption: 'KAMSIAAA',
            imageUrl: "https://picsum.photos/536/354",
          ),
        ],
      ),
    );
  }
}

class _StoryButton extends StatelessWidget {
  const _StoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 70.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 3.0, color: Colors.pink),
      ),
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

Widget _buildStory(String image, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

class _Post extends StatelessWidget {
  final String username;
  final String caption;
  final String imageUrl;

  const _Post({
    Key? key,
    required this.username,
    required this.caption,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/50',
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    username,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 400.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(Icons.bubble_chart_outlined),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${username}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text('${caption}'),
            ],
          ),
        ),
      ],
    );
  }
}
