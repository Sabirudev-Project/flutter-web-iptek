class Validator {
  ///Validating is email address
  String? validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

  //Validatin is password have 6 length
  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Must 6 Character';
    } else {
      return null;
    }
  }

  //Validatin new password and confirm password
  String? validateConfirmPassowrd(String value, String value1) {
    if (value.length < 6) {
      return 'Must 6 Character';
    } else if (value != value1) {
      return 'Not Match password';
    } else {
      return null;
    }
  }

  //Validatin is name have 4 length
  String? validateNameUser(String value) {
    if (value.length < 4) {
      return 'Must 4 Character';
    } else {
      return null;
    }
  }

  //Validatin is name have 4 length
  String? validatePhoneNumber(String value) {
    if (value.length < 10) {
      return 'Enter Valid Phonenumber';
    } else {
      return null;
    }
  }

  String? validatePrice(String value) {
    if (value.length < 1) {
      return 'Enter Price';
    } else {
      return null;
    }
  }

  String? validateTopUp(String value) {
    if (value.length < 2) {
      return 'Enter amount topup';
    } else {
      if (int.parse(value) < 20000) {
        return 'Minimum Top Up Rp.20,000';
      } else {
        return null;
      }
    }
  }
}
