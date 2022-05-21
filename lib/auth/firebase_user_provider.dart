import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MovieAppLdswFirebaseUser {
  MovieAppLdswFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MovieAppLdswFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MovieAppLdswFirebaseUser> movieAppLdswFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MovieAppLdswFirebaseUser>(
            (user) => currentUser = MovieAppLdswFirebaseUser(user));
