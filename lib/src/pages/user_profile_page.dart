import 'package:flutter/material.dart';
import 'package:github_client/src/models/user.dart';

class UserProfilePage extends StatelessWidget {
  User user;
  UserProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.login}'s Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              user.name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "@${user.login}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Text(
              "Work at",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              user.company,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              "Bio",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              user.bio,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Public Projects",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        user.following.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Following",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        user.followers.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Followers",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        user.publicReposAmount.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
