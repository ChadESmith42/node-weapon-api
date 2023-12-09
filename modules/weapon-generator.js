const types = ['Sword', 'Dagger', 'Staff', 'Mace', 'Foil', 'Spoon', 'Sponge', 'Hammer', 'Axe', 'Halberd', 'Knife', 'Lance', 'Claymore', 'Pike', 'Spear', 'Club', 'Flail', 'War Scythe', 'Baton', 'Stick', 'Cutlass', 'Sabre', 'Long Sword', 'Short Sword', 'Gladius', 'Swiss Dagger', 'Hatchet'];

const names = ['Justice', 'Bravery', 'Happiness', 'Fear', 'Calm', 'Belief', 'Sorrow', 'Coldness', 'Clarity', 'Stupidity', 'Luxury', 'Luck', 'Freedom', 'Right', 'Generosity', 'Goodness', 'Movement', 'Sleep', 'Awareness', 'Beauty', 'Love', 'Pleasure', 'Wisdom', 'Appetite', 'Loneliness', 'Joy', 'Hatred', 'Solitude', 'Peace', 'Failure', 'Talent', 'Wit', 'Honesty', 'Dishonesty', 'Fiction', 'Truth', 'Success', 'Wealth', 'Poverty', 'Riches', 'Care', 'Confusion', 'Brilliance', 'Slavery', 'Kindness', 'Ability', 'Thought', 'Loss', 'Gain', 'Growth', 'Anger', 'Envy', 'Irritation', 'Generation', 'Philosophy', 'Talent', 'Timing', 'Marriage', 'Divorce', 'Advantage', 'Argument', 'Horror', 'Pudding', 'Uncle Dave', 'Righteousness', 'Diversity', 'Adversity', 'Instigation', 'Libation', 'Inebriation', 'Fornication', 'Dedication', 'Class'];


const getRandomValueFromArray = (array) => {
  return array[Math.floor(Math.random() * array.length)];
};

const generateRandomNumberValues = (maxValue, minValue) => {
  return Math.floor(Math.random() * (maxValue - minValue + 1) + minValue);
};

const createWeaponName = () => {
  const type = getRandomValueFromArray(types);
  const name = getRandomValueFromArray(names);
  return {
    weapon_type: type,
    name: name,
    hit_points: generateRandomNumberValues(200, 10),
    durability: generateRandomNumberValues(100, 70),
    is_repairable: new Date().getTime() % 3 === 0,
    display_name: `${type} of ${name}`,
  };
};

module.exports = createWeaponName;
