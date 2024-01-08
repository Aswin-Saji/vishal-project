// Validate Email
// String validateEmail(String email) {
//   if (email.isEmpty) {
//     return 'Email is required';
//   }
//   if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email)) {
//     return 'Please enter a valid email address';
//   }
//   return "";
// }

// // Validate Password
// String validatePassword(String password) {
//   if (password.isEmpty) {
//     return 'Password is required';
//   }
//   if (password.length < 6) {
//     return 'Password must be at least 6 characters';
//   }
//   return "";
// }
String validateEmail(String email){
  if(email.isEmpty){
    print("email is required");

  }if(!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email)){
    print("please enter a validate email adress");
  }return"";
}
String validatePassword(String password){
  if(password.isEmpty)
{
  print("Password is required");
}
if(password.length< 6){
  print("password should contain atleast six characters");
}return "";
}