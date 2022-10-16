import { getHealth } from "../index"

function printHealth() {
    const health = getHealth();
    console.log(health);
}

printHealth();