//For Registration: sp_GetLogin(@UserName, @FirstName,
// @MidName, @LastName,@UserContact, @UserEmail, @UserPass, '2')

class RegModel {
  final String userName,
      FirstName,
      MidName,
      LastName,
      UserContact,
      UserEmail,
      UserPass;

  RegModel(this.userName, this.FirstName, this.MidName, this.LastName,
      this.UserContact, this.UserEmail, this.UserPass);
}
