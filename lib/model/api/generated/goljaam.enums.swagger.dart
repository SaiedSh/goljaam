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

enum CourseStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Pending')
  pending('Pending'),
  @JsonValue('Started')
  started('Started'),
  @JsonValue('Done')
  done('Done'),
  @JsonValue('Canceled')
  canceled('Canceled');

  final String? value;

  const CourseStatus(this.value);
}

enum CourseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Online')
  online('Online'),
  @JsonValue('Offline')
  offline('Offline'),
  @JsonValue('InPerson')
  inperson('InPerson');

  final String? value;

  const CourseType(this.value);
}

enum Sex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Male')
  male('Male'),
  @JsonValue('Female')
  female('Female');

  final String? value;

  const Sex(this.value);
}

enum UserRoles {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Admin')
  admin('Admin'),
  @JsonValue('Client')
  $client('Client'),
  @JsonValue('Staff')
  staff('Staff'),
  @JsonValue('Sales')
  sales('Sales');

  final String? value;

  const UserRoles(this.value);
}

enum UserTaskStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Waiting')
  waiting('Waiting'),
  @JsonValue('Done')
  done('Done'),
  @JsonValue('Canceled')
  canceled('Canceled'),
  @JsonValue('AdminDone')
  admindone('AdminDone');

  final String? value;

  const UserTaskStatus(this.value);
}
