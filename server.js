const express = require('express');
const cors = require('cors');
require('dotenv').config();
const app = express();

const weaponRouter = require('./routes/weapon.router');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.use('/api/weapon', weaponRouter);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});
