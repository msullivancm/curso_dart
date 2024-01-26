import 'package:galileo_sqljocky5/sqljocky.dart';
import 'package:curso_dart/bd.dart' as bd;

main() async {
  var connection = await bd.createConnection();

  //await createTable(connection);
  await createTables(connection);
  await insert(connection);
  await update(connection);
  await remove(connection);

  await transasao(connection);

  await listData(connection);
  //await dropTable(connection);
  await connection.close();

}

Future<void> dropTable(MySqlConnection connection) async {
  print('Removendo tabela...');
  await connection.execute('DROP TABLE IF EXISTS pessoa');
  print('Tabela removida com sucesso!');
}

Future<void> remove(MySqlConnection connection) async {
  print('Removendo dados...');
  await connection.execute('DELETE FROM pessoa WHERE id = 1');
  print('Dados removidos com sucesso!');
}

Future<void> listData(MySqlConnection connection) async {
  print('Listando dados...');
  var result = await connection.execute('SELECT * FROM pessoa');
  await result.forEach((row) {
    print('ID: ${row[0]}, Nome: ${row[1]}, Idade: ${row[2]}');
  });
  print('Dados listados com sucesso!');
}

Future<void> update(MySqlConnection connection) async {
  print('Atualizando dados...');
  await connection.execute('UPDATE pessoa SET nome = "Maria Silva" WHERE id = 1');
  print('Dados atualizados com sucesso!');
}

Future<void> insert(MySqlConnection connection) async {
  print('Inserindo dados...');

  var data = [
    ['Maria', 30],
    ['João', 20],
    ['José', 40]
  ];

  for (var i = 0; i < data.length; i++) {
    await connection.prepared('INSERT INTO pessoa (nome, idade) VALUES (?, ?)', data[i]);
  }

  print('Dados inseridos com sucesso!');
}

Future<void> createTable(MySqlConnection connection) async {
  print('Criando tabela...');
  await connection.execute('''
    CREATE TABLE IF NOT EXISTS `pessoa` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `nome` varchar(255) NOT NULL,
      `idade` int(11) NOT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ''');
  print('Tabela criada com sucesso!');
}

Future<void> transasao(MySqlConnection connection) async {
 var conn = await bd.createConnection();
 await createTables(conn);

 var trans = await conn.begin();

 try {

   await trans.execute('insert into people (id, name, email, age) values (1, "Leonardo", "leo@leo.com", 23)');
   await trans.execute('insert into horse (person_id) values (1)');
   await trans.commit();

 } catch(e) {

   print(e);
   await trans.rollback();
 }

 await conn.close();
}


Future<void> createTables(MySqlConnection conn) async {
 await conn.execute('CREATE TABLE IF NOT EXISTS people (id INTEGER NOT NULL auto_increment, name VARCHAR(255), age INTEGER, email VARCHAR(255), PRIMARY KEY (id))');
 await conn.execute('CREATE TABLE IF NOT EXISTS horse (id INTEGER NOT NULL auto_increment, person_id INTEGER NOT NULL, PRIMARY KEY (id), FOREIGN KEY (person_id) REFERENCES people(id))');
}