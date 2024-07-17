import 'package:reactive_forms/reactive_forms.dart';

var loginForm = FormGroup({
  'username': FormControl<String>(validators: [Validators.required]),
  'password': FormControl<String>(validators: [Validators.required])
});
