import readFile from "./src/readData";

/**
 * This returns a list of all supplements
 * @param {string} supplement
 * @param {string} [type]
 */

function getSupplements() {
    const supplements = readFile();
    console.log(supplements);
}

getSupplements();