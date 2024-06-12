import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailtexteditingcontroller = TextEditingController();
  TextEditingController _passwordtexteditingcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                "RegisterCAMSiAZDZ2hvTm5SMlltdDNhUnE1QkJwU0NnZ3dlR1J6ZG10aU1oSkdxZ0U0Q2dvS0NCSUdabUZwYkdWa0VnOUFDcklCQ2dvSUdnWUkycW5EL2c4aEFBQUFBQUJBcjBBcUJpSUVFZ0lRQVRBQU9nWUtCQm9DRUFLcUFnaHRhalZxZUc1MmFTTFlBd3BGQ2tNSUNVSWlXaUFTRWdvUVlYQnBVbVZ6ZFd4MGNUTTJRMjl3ZVJvS0NnaHRhMmhyWkhKbFkwb0VhZ0lJQTRJQkZBb1NRMjl1ZEdGcGJtVnlYMmMxWW04elpIazJFbzREQ2doNGMydHdkM3AyWVJLQkF4THpBaEFCR3RjQ0VsQUtCbTlwWVhwNU5CSkdDaFFLQ21ObGJuUmxjazVoYldVU0JtOXBZWHA1TkNJdUNBWkNBaW9BU2hJaUVBb09KQzVRY205d1pYSjBlVTVoYldXQ0FSRUtEME52YkhWdGJsOW1hSEp2T1RSemJ4SjBDZ1p3T1hvNWNEY1NhZ29OQ2dOMFlXY1NCbkE1ZWpsd055SlpDQWxDSWxvZ0VoSUtFR0Z3YVZKbGMzVnNkSEV6TmtOdmNIa2FDZ29JYld0b2EyUnlaV05LQkdvQ0NBRktFWm9DRGdvTUNncHlaWEJ2Y25SRWMzUmxnZ0VVQ2hKRGIyNTBZV2x1WlhKZmFIZDVhakowWlRpS0FRQVNlQW9HYm5FM2FHOHdFbTRLRWdvSWNHUm1WRzlrWVhrU0JtNXhOMmh2TUNKWUNBbENJbG9nRWhJS0VHRndhVkpsYzNWc2RIRXpOa052Y0hrYUNnb0liV3RvYTJSeVpXTktCR29DQ0FGS0VKb0NEUW9MQ2dseVpYQnZjblJWVWt5Q0FSUUtFa052Ym5SaGFXNWxjbDlvZDNscU1uUmxPSW9CQURJVENoRlRZMkZtWm05c1pGODNhM2RtYVhJd09DQUFXaE1LRVZOallXWm1iMnhrWHpkcmQyWnBjakE0cWdJSVpqbHpjbVJqY20wNkNHeGlaRzU1ZGpGNQ==")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(children: [
              TextField(
                controller: _emailtexteditingcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: " Email",
                  hintText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: true,
                controller: _passwordtexteditingcontroller,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: " password",
                  hintText: "Enter password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    Register();
                  },
                  child: const Text("Register")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("allready i have an account"))
            ]),
          ),
        ));
  }

  Register() {
    String email = _emailtexteditingcontroller.text;
    String password = _passwordtexteditingcontroller.text;
    print("$email >>>>>>> $password");
  }
}
