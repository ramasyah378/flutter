import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          _Notification(
            username: 'Agung',
            message: 'liked your post.',
            imageUrl: 'https://picsum.photos/51',
          ),
          _Notification(
            username: 'Arviel',
            message: 'commented on your post.',
            imageUrl: 'https://picsum.photos/59',
          ),
          _Notification(
            username: 'Bima',
            message: 'started following you.',
            imageUrl: 'https://picsum.photos/55',
          ),
          _Notification(
            username: 'kevin',
            message: 'mentioned you in a comment.',
            imageUrl: 'https://picsum.photos/57',
          ),
        ],
      ),
    );
  }
}

class _Notification extends StatelessWidget {
  final String username;
  final String message;
  final String imageUrl;

  const _Notification({
    Key? key,
    required this.username,
    required this.message,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: ' $message',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    );
  }
}
