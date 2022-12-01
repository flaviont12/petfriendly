part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequest(
      {required String email, required String password}) = LoginRequest;

  const factory AuthEvent.authStartRequest() = AuthStartRequest;
}
