'use strict';

const express = require('express');

// константы
const port = 7000;
const host = '0.0.0.0';

// приложение
const app = express();
app.get('/', (req, res) => {
  res.send('I\'m admin');
});

app.listen(port, host);
console.log(`running on http://${host}:${port}`);