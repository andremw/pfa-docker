import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send('Great! Node is working');
});

app.listen(3000, () => {
  console.log('app running!');
});