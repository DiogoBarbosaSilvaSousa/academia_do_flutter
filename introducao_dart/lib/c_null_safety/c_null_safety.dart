void main() {
  // ??
  String? x;
  String otherX = 'otherX';

  // if (x == null) { print(otherX); } else { print(x); }
  print(x ?? otherX);

  // ??=

  var imNull;
  var imNotNull;

  imNotNull = 15;

  imNull ??= 5;
  imNotNull ??= 5;

  print(imNull);
  print(imNotNull);

  // ?.
  String? nullString;
  String notNullString = 'Hello World';

  // if(nullString != null) {nullString.contains('Hello')}
  print(nullString?.contains('Hello'));

  print(notNullString.contains('Hello'));
}
