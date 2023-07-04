import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum ApiResultStatusCode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Success')
  success('Success'),
  @JsonValue('ServerError')
  servererror('ServerError'),
  @JsonValue('BadRequest')
  badrequest('BadRequest'),
  @JsonValue('NotFound')
  notfound('NotFound'),
  @JsonValue('ListEmpty')
  listempty('ListEmpty'),
  @JsonValue('LogicError')
  logicerror('LogicError'),
  @JsonValue('UnAuthorized')
  unauthorized('UnAuthorized');

  final String? value;

  const ApiResultStatusCode(this.value);
}

enum CommentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NotSeen')
  notseen('NotSeen'),
  @JsonValue('Accepted')
  accepted('Accepted'),
  @JsonValue('InAccepted')
  inaccepted('InAccepted');

  final String? value;

  const CommentStatus(this.value);
}

enum GenderType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Male')
  male('Male'),
  @JsonValue('Female')
  female('Female');

  final String? value;

  const GenderType(this.value);
}
