'use strict';

const express = require('express');

// константы
const port = 3003;
const host = '0.0.0.0';

// приложение
const app = express();
app.get('/', (req, res) => {
  res.send('I\'m articles');
});

app.listen(port, host);
console.log(`running on http://${host}:${port}`);