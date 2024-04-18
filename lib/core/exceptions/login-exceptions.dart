import 'package:musicplayer/core/exceptions/base_exceptions.dart';

class LoginFailedExceptions extends BaseException {
  final String? errormsg;
  LoginFailedExceptions({this.errormsg})
      : super(
            message: errormsg ?? "Login Failed, an unknown exception occurred");
}
