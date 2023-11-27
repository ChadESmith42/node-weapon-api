const express = require('express');
require('dotenv').config();
const app = express();

const weaponRouter = require('./routes/weapon.router');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/api/weapon', weaponRouter);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});
