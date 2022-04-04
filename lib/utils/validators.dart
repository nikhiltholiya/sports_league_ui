import 'package:form_field_validator/form_field_validator.dart';

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(8,
      errorText: 'Password must be at least 8 characters long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'Passwords must have at least one special character'),
  PatternValidator(r'(?=.*?[A-Z])',
      errorText: 'Passwords must have at least one upper character'),
  PatternValidator(r'(?=.*?[a-z])',
      errorText: 'Passwords must have at least one lower character'),
  PatternValidator(r'(?=.*?[0-9])',
      errorText: 'Passwords must have at least one digit')
]);


final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'Email is required'),
  EmailValidator(errorText: 'Enter a valid email address'),
]);