import express from 'express';
import mysql from 'mysql';

const app = express();

const dbConnection = mysql.createConnection({
  host: process.env.MYSQL_HOST || 'pfa-mysql',
  user: process.env.MYSQL_USER || 'root',
  password: process.env.MYSQL_PASSWORD || 'password',
  database: process.env.MYSQL_DATABASE || 'test',
});

dbConnection.connect((err) => {
  if (err) {
    console.error('error connecting to mysql: ', err);
  } else {
    console.log('mysql connection successful');

    app.listen(3000, () => {
      console.log('app running!');
    });
  }
});

app.get('/', (_, res) => {
  res.send('Great! Node is working');
});

app.get('/modules', (_, res) => {
  const query = 'SELECT * FROM modules';
  dbConnection.query(query, (err, results) => {
    if (err) {
      console.error(err);
      res.json({
        success: false,
        message: 'An error occurred',
      });
    } else {
      res.json({
        success: true,
        results,
      });
    }
  });
});
