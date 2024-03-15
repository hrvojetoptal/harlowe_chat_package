import 'package:freezed_annotation/freezed_annotation.dart';

part 'twilio_message.freezed.dart';
part 'twilio_message.g.dart';

@freezed
class TwilioMessage with _$TwilioMessage {
  const factory TwilioMessage({
    required String sid,
    required String author,
    required String body,
    required DateTime dateCreated,
    required List attachedMedia,
    String? participant,
    required String participantSid,
    required int index,
  }) = _TwilioMessage;

  factory TwilioMessage.fromJson(Map<String, dynamic> json) =>
      _$TwilioMessageFromJson(json);
}
