import 'package:flutter/material.dart';


class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  List<String> messages = [
    'Message 1',
    'Message 2',
    'Message 3',
    'Message 4',
  ];

  bool isOverlayVisible = false;
  Offset overlayPosition = Offset.zero;
  int selectedMessageIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Press Example'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onLongPressStart: (details) {
                  setState(() {
                    isOverlayVisible = true;
                    overlayPosition = details.globalPosition;
                    selectedMessageIndex = index;
                  });
                },
                child: ListTile(
                  title: Text(messages[index]),
                ),
              );
            },
          ),
          if (isOverlayVisible)
            Positioned(
              top: overlayPosition.dy - 70,
              left: overlayPosition.dx - 40,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isOverlayVisible = false;
                  });
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.edit),
                        title: const Text('Edit'),
                        onTap: () {
                          setState(() {
                            isOverlayVisible = false;
                          });
                          _editMessage(selectedMessageIndex);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.delete),
                        title: const Text('Delete'),
                        onTap: () {
                          setState(() {
                            isOverlayVisible = false;
                          });
                          _deleteMessage(selectedMessageIndex);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _editMessage(int index) {
    // Implement edit logic here
    print('Edit message with index $index');
  }

  void _deleteMessage(int index) {
    // Implement delete logic here
    setState(() {
      messages.removeAt(index);
    });
    print('Delete message with index $index');
  }
}
