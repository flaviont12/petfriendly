part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authStarted() = AuthStarted;
  const factory AuthState.authLoading() = AuthLoading;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unAuthenticated() = UnAuthenticated;
  const factory AuthState.authError(String error) = AuthError;
}

