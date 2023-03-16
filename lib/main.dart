import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubiquitous_fortnight/core/api/models/auth_request.dart';
import 'package:ubiquitous_fortnight/core/app_web_view/app_web_view.dart';

import 'core/api/api_constant.dart';
import 'core/api/models/auth_response.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Body());
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          RichText(
            text: TextSpan(
                text: text,
                style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.none)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<AuthResponse>(
              context,
              MaterialPageRoute(
                builder: (context) => const AppWebView(
                    request: AuthRequest(
                        clientId: '',
                        redirectUri: "https://oauth.vk.com/blank.html",
                        state: 'RandomString')),
              )).then((value) {
            http
                .get(
              Uri.https(api, 'method/$getInfo',
                  {"access_token": value!.accessToken, 'v': '5.131'}),
            )
                .then((value) {
              setState(() {
                text = value.body;
              });
            });
          });
        },
      ),
    );
  }
}
