import 'package:galileo_sqljocky5/sqljocky.dart';

Future<MySqlConnection> createConnection() async {
  var setting = ConnectionSettings(
    user: "usuario",
    password: "senha",
    host: "localhost",
    port: 3306,
    db: "banco",
  );
  return await MySqlConnection.connect(setting);
}