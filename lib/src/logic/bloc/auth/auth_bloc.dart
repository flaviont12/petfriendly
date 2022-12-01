import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:petfriendly/src/services/auth/auth_user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthStarted()) {

    on<AuthStartRequest>((event, emit) {
      emit(
        const AuthLoading()
      );

      final user = _getCurrentUser();

      if (user == null) {
        emit(
          const UnAuthenticated()
        );
      } else {
        emit (
          const Authenticated()
        );
      }

    });

    on<LoginRequest>((event, emit) async {
      emit(
        const AuthLoading()
      );
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        final user = _getCurrentUser();
        if (user != null) {
          emit(
              const Authenticated()
          );
        } else {
          emit(
            const AuthError("Erro ao realizar login...")
          );
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          emit(
            const AuthError("Usuário não encontrado!")
          );
        } else if (e.code == 'wrong-password') {
          emit(
            const AuthError("Senha incorreta!")
          );
        } else if (e.code == 'invalid-email') {
          emit(
            const AuthError("E-mail inválido!")
          );
        } else {
          emit(
              const AuthError("Erro ao realizar login...")
          );
        }
      } catch (_) {
        emit(
            const AuthError("Erro ao realizar login...")
        );
      }
    });
  }

  AuthUser? _getCurrentUser() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return AuthUser.fromFirebase(user);
    } else {
      return null;
    }
  }
}
