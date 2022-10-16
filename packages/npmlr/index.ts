// import { readData, readFile } from "./src/readData";
import readData from "./src/readData";
import readFile from "./src/readData";

/**
 * This returns a list of all supplements
 * @param {string} supplement
 * @param {string} [type]
 */

interface Data {
  boost: string[];
  muscles: string[];
  health: string[];
}

function getAllSupplements() {
  const supplements = readFile();
  console.log(supplements);
}

function getHealth() {
  const health = readData().health;
  console.log(health);
}

function getBoost() {
  const boost = readData().boost;
  console.log(boost);
}

function getMuscle() {
  const muscle = readData().muscles;
  console.log(muscle);
}

function getAll() {
  const all: Data = readData();
  console.log(all);
}

export { getAllSupplements, getHealth, getBoost, getMuscle, getAll };