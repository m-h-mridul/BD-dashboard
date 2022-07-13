class Validation {
  //**password validation text */
  static passwordvalidation(String password) {
    if (password.isEmpty) {
      return 'Please enter password';
    } else if (password.length < 5) {
      return 'Pasword length must be 8';
    } else if (password.contains('firebase_auth/wrong-password')) {
      return 'Wrong Password';
    } else if (password == 'weak-password') {
      return 'The password provided is too weak.';
    }
    return null;
  }

  ///**email validation function */
  static emailvalidation(String email) {
    if (email.isEmpty) {
      return 'Enter your email';
    } else if (!email.contains('@gmail.com')) {
      return 'Please enter valid email';
    } else if (email == "ERROR_INVALID_EMAIL") {
      return 'Email Is Not Valied';
    } else if (email == 'email-already-in-use') {
      return 'The account already exists for that email.';
    }
    return null;
  }

  //**for name field  */
  static namevalidation(String name) {
    if (name.isEmpty) {
      return 'Enter your name';
    }
    return null;
  }
}
