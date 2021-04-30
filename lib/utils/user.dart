class User {
  String name;
  String email;
  int mobile;
  String address;
  String zipCode;
  String state;
  String password;

  User({
    this.name,
    this.email,
    this.address,
    this.zipCode,
    this.state,
    this.mobile,
    this.password,
  });
}

User mainUser = User(
  name: 'Emily',
  email: 'emiliaclarke@email.com',
  mobile: 123456789,
  address: '653 Nostrand Ave',
  zipCode: 'NY 11216',
  state: 'Brooklyn',
  password: 'test12345',
);

// List<User> userList = [
//   User(
//     name: 'Emily',
//     email: 'emiliaclarke@email.com',
//     mobile: 123456789,
//     address: '653 Nostrand Ave',
//     zipCode: 'NY 11216',
//     state: 'Brooklyn',
//     password: 'test12345',
//   )
// ];
