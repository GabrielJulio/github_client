class User {
  late String name;
  late String login;
  late String avatarUrl;
  late String company;
  late String email;
  late String bio;
  late int publicReposAmount;
  late int followers;
  late int following;

  User({userJson}) {
    name = userJson["name"];
    login = userJson["login"];
    avatarUrl = userJson["avatar_url"];
    company = userJson["company"] ?? '';
    email = userJson["email"] ?? '';
    bio = userJson["bio"] ?? '';
    publicReposAmount = userJson["public_repos"];
    followers = userJson["followers"];
    following = userJson["following"];
  }
}
