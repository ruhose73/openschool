'use strict';

const express = require('express');

// constants
const port = process.env.PORT;
const host = process.env.HOST;

// the application
const app = express();
app.get('/', (req, res) => {
  res.send('I\'m processes');
});

app.listen(port, host);
console.log(`running on http://${host}:${port}`);