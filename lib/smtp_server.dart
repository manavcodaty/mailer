import 'dart:io';

export 'smtp_server/gmail.dart';
export 'smtp_server/hotmail.dart';
export 'smtp_server/mailgun.dart';
export 'smtp_server/yahoo.dart';


class SmtpServer {
  final String name;
  final String host;
  final int port;
  final bool ignoreBadCertificate;
  final bool ssl;
  final bool allowInsecure;
  final String username;
  final String password;

  SmtpServer(this.host,
      {this.port: 587,
      String name,
      this.ignoreBadCertificate: false,
      this.ssl: false,
      this.allowInsecure: false,
      this.username,
      this.password})
      : this.name = name ?? Platform.localHostname;
}
