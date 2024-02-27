import 'dart:ui';

class NotificationModel {
  final String avatar;
  final String action;
  final String? image;
  final VoidCallback? messageButton;
  final String? messageButtonLabel;
  NotificationModel({
    required this.avatar,
    required this.action,
    this.image = '',
    this.messageButton,
    required  this.messageButtonLabel,
  });
}