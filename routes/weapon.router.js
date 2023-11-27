const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();

router.get('/', (req, res) => {
  console.group('Weapon get');
  console.info(req.url);
  const weapon = { name: 'Spoon of Combat', type: "melee", damage: 2, durability: 99, isRepairable: true, maxDurability: 99 };
  console.info(`Sending response`, weapon);
  console.groupEnd();
  return res.send(weapon);
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
    res.status(500).send(`Could not get your weapon at this time. Please, try again.`);
  }
  res.end();
});

module.exports = router;
