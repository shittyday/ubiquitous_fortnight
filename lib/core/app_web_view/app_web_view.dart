import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ubiquitous_fortnight/core/api/api_constant.dart';
import 'package:ubiquitous_fortnight/core/api/models/auth_request.dart';
import 'package:ubiquitous_fortnight/core/api/models/auth_response.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatefulWidget {
  const AppWebView({
    super.key,
    required this.request,
  });
  final AuthRequest request;
  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  late final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
      Uri.https(oAuth, 'authorize', widget.request.toJson()),
    )
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {
          log(url);
        },
        onPageFinished: (String url) {
          final response = Uri.parse(url);
          parse(response);
        },
        onWebResourceError: (WebResourceError error) {},
      ),
    );
  @override
  void dispose() {
    super.dispose();
  }

  void parse(Uri response) {
    if (response.fragment.contains('access_token')) {
      if (response.fragment.split('=').isNotEmpty) {
        var aT = RegExp(r'access_token=').firstMatch(response.fragment);

        final eI = RegExp(r'&expires_in=').firstMatch(response.fragment);
        final uI = RegExp(r'&user_id=').firstMatch(response.fragment);
        final sT = RegExp(r'&state=').firstMatch(response.fragment);
        final accessToken = response.fragment.substring(aT!.end, eI!.start);
        final expiresIn = response.fragment.substring(eI.end, uI!.start);
        final userId = response.fragment.substring(uI.end, sT!.start);
        final state =
            response.fragment.substring(sT.end, response.fragment.length);

        Navigator.pop(
            context,
            AuthResponse(
                accessToken: accessToken,
                expiresIn: int.parse(expiresIn),
                userId: int.parse(userId),
                state: state));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox.expand(
        child: Center(
          child: WebViewWidget(
            controller: _controller,
          ),
        ),
      )),
    );
  }
}
