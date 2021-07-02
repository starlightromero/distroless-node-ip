const express = require('express');
const axios = require('axios');

const app = express();

app.use(express.json());

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET');
  res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
  next();
});

app.get('/', async (req, res) => {
  const apiKey = process.env.API_KEY;

  try {
    const geo = await axios.get(`https://geo.ipify.org/api/v1?apiKey=${apiKey}`);
    return res.status(200).json({ ...geo.data });
  } catch (err) {
    return res.status(500).json({ err });
  }
});

app.listen(8080);

module.exports = app;
