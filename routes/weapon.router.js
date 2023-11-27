const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();
const axios = require('axios');

router.get('/new', async (req, res) => {
  try {
    const { data } = await axios.get(
      'https://my.api.mockaroo.com/weapons.json?key=20ac3840'
    );
    res.status(200).send(data);
  } catch (error) {
    res.status(500).send('Could not get the weapon. Please try again.');
  }
});

router.get('/:weaponId', async (req, res) => {
  try {
    const weaponId = req.params.weaponId;
    const queryString = `
    SELECT display_name, hit_points, is_repairable, id
    FROM weapons
    WHERE id = $1
    LIMIT 1`;
    const weapon = await pool.query(queryString, [weaponId]);
    if (weapon.rowCount > 0) {
      res.status(200).send(weapon.rows[0]);
    }
    if (weapon.rowCount === 0) {
      res.status(404).send(`Weapon not found.`);
    }
  } catch (error) {
    res
      .status(500)
      .send(`Could not get your weapon at this time. Please, try again.`);
  }
  res.end();
});

router.post('/', async (req, res) => {
  try {
    const weapon = req.body;
    const queryString = `
      WITH newWeapon as (
        INSERT INTO weapons (weapon_type, name, hit_points, durability, is_repairable, display_name) values ($1, $2, $3, $4, $5, $6)
        RETURNING *
      )
      SELECT * FROM newWeapon;
    `;

    const dbUpdate = await pool.query(queryString, [weapon.weapon_type, weapon.name, weapon.hit_points, weapon.durability, weapon.is_repairable, weapon.display_name]);
    res.status(201).send(dbUpdate.rows[0]);
  } catch (error) {
    res.status(500).send(`Could not save the weapon. Please try again.`);
  }
});

module.exports = router;
