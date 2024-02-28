import 'package:flutter/material.dart';
import '../models/notification_model.dart';

class ListViewNotification extends StatefulWidget {
  const ListViewNotification({Key? key}) : super(key: key);

  @override
  State<ListViewNotification> createState() => _ListViewNotificationState();
}

class _ListViewNotificationState extends State<ListViewNotification> {
  final Map<String, List<NotificationModel>> _dataMap = {
    'New': [
      NotificationModel(
        avatar: 'assets/images/avatar1.png',
        action: 'barrenness liked your photo. 1h',
        image: 'assets/images/post.png',
        messageButtonLabel: null,
        messageButton: null,
      ),
    ],
    'Today': [
      NotificationModel(
        avatar: 'assets/images/avatar2.png',
        action: 'kiero_d, zackjohn and 26 others liked your photo. 3h',
        image: 'assets/images/post1.png',
        messageButtonLabel: null,
        messageButton: null,
      ),
      NotificationModel(
        avatar: 'assets/images/avatar3.png',
        action: 'craig_love mentioned you in a comment: @jacob_w exactly..',
        image: 'assets/images/post2.png',
        messageButtonLabel: null,
        messageButton: null,
      ),
      NotificationModel(
        avatar: 'assets/images/avatar4.png',
        action: 'martini_rond started following you. 3d',
        image: 'assets/images/post3.png',
        messageButtonLabel: null,
        messageButton: null,
      ),
    ],
    'This Week': [
      NotificationModel(
        avatar: 'assets/images/avatar.png',
        action: 'maxjacobson started following you. 3d',
        image: null,
        messageButtonLabel: 'Follow',
        messageButton: () {},
      ),
      NotificationModel(
        avatar: 'assets/images/avatar1.png',
        action: 'mis_potter started following you. 3d',
        image: null,
        messageButtonLabel: 'Message',
        messageButton: () {},
      ),
    ],
    'This Month': [
      NotificationModel(
        avatar: 'assets/images/avatar3.png',
        action: 'hello bro',
        image: null,
        messageButtonLabel: 'Message',
        messageButton: () {},
      ),
      NotificationModel(
        avatar: 'assets/images/avatar4.png',
        action: 'Viet following me',
        image: null,
        messageButtonLabel: 'Follow',
        messageButton: () {},
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataMap.length,
      itemBuilder: (context, index) {
        final groupTitle = _dataMap.keys.elementAt(index);
        final groupItems = _dataMap[groupTitle] ?? [];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(groupTitle),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: groupItems.length,
              itemBuilder: (context, index) {
                final notification = groupItems[index];
                return ListTile(
                  leading: Image.asset(
                    notification.avatar,
                    width: 50,
                    height: 50,
                    fit: BoxFit.fitWidth,
                  ),
                  title: Text(
                    notification.action,
                    style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                    ),
                  ),
                  trailing: notification.image != null
                      ? Image.asset(
                          notification.image!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fitWidth,
                        )
                      : notification.messageButton != null
                          ? Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                color:
                                    notification.messageButtonLabel == 'Follow'
                                        ? Colors.blue
                                        : Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: ElevatedButton(
                                onPressed: notification.messageButton,
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      notification.messageButtonLabel ==
                                              'Message'
                                          ? Colors.white
                                          : Colors.grey,
                                  backgroundColor:
                                      notification.messageButtonLabel ==
                                              'Follow'
                                          ? Colors.blue
                                          : Colors.white,
                                  elevation: 0,
                                ),
                                child: Text(
                                  notification.messageButtonLabel!,
                                  style: TextStyle(
                                    color: notification.messageButtonLabel ==
                                            'Follow'
                                        ? Colors.white
                                        : Colors.grey,
                                    // fontFamily: 'SF Pro Text',
                                  ),
                                ),
                              ),
                            )
                          : TextButton(
                              onPressed: notification.messageButton,
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.grey,
                              ),
                              child: Text(
                                notification.messageButtonLabel!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                );
              },
            ),
            Divider(
              height: 10,
              color: Colors.grey.withOpacity(0.3),
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader(String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'SF Pro Text',
        ),
      ),
    );
  }
}
