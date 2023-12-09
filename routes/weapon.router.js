const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();
const weaponGenerator = require('../modules/weapon-generator');

/**
 * GET '/'
 * Endpoint returns weapons matching the search query.
 */
router.get('/', async (req, res) => {
  const hitPointSearch = req.body.hitPointSearch || { min: 50, max: 200 };
  const durabilitySearch = req.body.durabilitySearch || { min: 50, max: 100 };

  let queryString = `
    SELECT *
    FROM weapons
    WHERE name = ANY($1)
      OR weapon_type = ANY($2)
      AND (hit_points BETWEEN $3 AND $4
      AND durability BETWEEN $5 AND $6);
  `;
  try {
    const dbResponse = await pool.query(queryString, [
      req.body.nameList,
      req.body.typeList,
      hitPointSearch.min,
      hitPointSearch.max,
      durabilitySearch.min,
      durabilitySearch.max,
    ]);
    dbResponse.rowCount > 0 ?
      res.status(200).send(dbResponse.rows) :
      res.status(404).send('No matching records found. Please modify your search and try again.');
  } catch {
    res.status(500).send(`Could not find weapons at this time. Please try again.`);
  }
});

/**
 * GET '/new'
 * Endpoint returns a new weapon.
 *
 * {
 *   "weapon_type": "Sword",
 *   "name": "Fiction",
 *   "hit_points": 67,
 *   "durability": 83,
 *   "is_repairable": false,
 *   "display_name": "The Sword of Fiction"
 * }
 */
router.get('/new', async (req, res) => {
  try {
    const weapon = weaponGenerator();
    console.log('Weapon', weapon);
    res.send(weaponGenerator()).status(200);
  } catch (error) {
    res
      .status(500)
      .send('Could not generate a weapon at this time. Please try again.');
  }
});

/**
 * GET `/:weaponId`
 * Endpoint returns a specific weapon by `id`.
 *
 * {
 *   "display_name": "Mace of Shame",
 *   "hit_points": 99,
 *   "is_repairable": true,
 *   "id": 1003
 * }
 */
router.get('/:weaponId', async (req, res) => {
  try {
    const weaponId = req.params.weaponId;
    const queryString = `
    SELECT display_name, hit_points, is_repairable, durability, id
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

/**
 * POST `/`
 * Endpoint saves a weapon. Payload expected as follows:
 * {
 *  "weapon_type": "Mace",
 *  "name": "Honor",
 *  "hit_points": 147,
 *  "durability": 99,
 *  "is_repairable": false,
 *  "display_name": "Mace of Honor"
 * }
 *
 * Returns the newly created weapon.
 */
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

    const dbUpdate = await pool.query(queryString, [
      weapon.weapon_type,
      weapon.name,
      weapon.hit_points,
      weapon.durability,
      weapon.is_repairable,
      weapon.display_name,
    ]);
    res.status(201).send(dbUpdate.rows[0]);
  } catch (error) {
    res.status(500).send(`Could not save the weapon. Please try again.`);
  }
});

router.put('/:weaponId', async (req, res) => {
  console.group('PUT Weapon');
  const weaponId = req.params.weaponId;
  console.info('Weapon ID from params', weaponId);

  try {
    console.info('Weapon id matches', weaponId == req.body.id);
    if (!weaponId || weaponId != req.body.id) {
      res.status(400).send('Please provide a valid weapon ID.');
    }
    const weaponQuery = `
      SELECT *
      FROM weapons
      WHERE id = $1;
    `;
    const weaponList = await pool.query(weaponQuery, [weaponId]);
    console.log('Weapon List', weaponList.rows);
    if (weaponList.rowCount !== 1) {
      res
        .status(404)
        .send(`Could update weapon with ID of ${weaponId}. Please try again.`);
    }

    const updateWeaponQuery = `
      UPDATE weapons
      SET durability = $1
      WHERE id = $2
      RETURNING *;
    `;

    const dbUpdate = await pool.query(updateWeaponQuery, [
      req.body.durability,
      weaponId,
    ]);
    console.info('Update return from the DB', dbUpdate);
    if (dbUpdate.rowCount === 1) {
      res.status(200).send(dbUpdate.rows[0]);
    }
  } catch (error) {
    console.error('Error from update', error);
    res
      .status(500)
      .send(
        `Could not update weapon with ID ${weaponId} at this time. Please try again.`
      );
  }
  console.groupEnd();
});

router.delete('/:weaponId', async (req, res) => {
  try {
    const weaponId = req.params.weaponId;
    if (!weaponId) {
      res.status(400).send('Please provide a valid weapon ID.');
    }
    const queryString = `
      DELETE FROM weapons
      WHERE id = $1;
    `;
    const dbUpdate = await pool.query(queryString, [weaponId]);
    if (dbUpdate.rowCount === 1) {
      res.status(200).send('Weapon is deleted.');
    }
  } catch (error) {
    res
      .status(500)
      .send('Could not delete the weapon at this time. Please try again.');
  }
});

module.exports = router;
