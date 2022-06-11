part of 'login_controller.dart';

enum LoginStatus { initial, loading, failure }

class LoginState extends Equatable {
  final LoginStatus status;
  final String? errorMessages;

  const LoginState._({
    required this.status,
    this.errorMessages,
  });

  const LoginState.initial() : this._(status: LoginStatus.initial);

  @override
  List<Object?> get props => [status, errorMessages];

  LoginState copyWith({
    LoginStatus? status,
    String? errorMessages,
  }) {
    return LoginState._(
      status: status ?? this.status,
      errorMessages: errorMessages ?? this.errorMessages,
    );
  }
}
