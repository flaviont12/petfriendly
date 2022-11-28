//Login Exceptions
class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

class WrongEmailAuthException implements Exception {}

//Register Exceptions
class InvalidEmailAuthException implements Exception {}

class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

// Generic Excepitons

class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}
