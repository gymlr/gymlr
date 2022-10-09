import readData from "./readData";

interface Data {
  boost: string[];
  muscles: string[];
  health: string[];
}

function getHealth() {
  const health = readData().health;
  return health;
}

function getBoost() {
  const boost = readData().boost;
  return boost;
}

function getMuscle() {
  const muscle = readData().muscles;
  return muscle;
}

function getAll() {
  const all: Data = readData();
  return all;
}

export default { getHealth, getBoost, getMuscle, getAll };
