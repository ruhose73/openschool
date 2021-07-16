'use strict';

const express = require('express');

// constants
const port = 9000;
const host = '0.0.0.0';

// the application
const app = express();
app.get('/', (req, res) => {
  res.send('I\'m processes');
});

app.listen(port, host);
console.log(`running on http://${host}:${port}`);