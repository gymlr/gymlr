package main

import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json

val data = "/supplements.json".asResource()
val supplements = Json.decodeFromString<SupplementsData>(data)

/**
 * Gives you all health supplements
 * @return health data
 */
fun getHealth(): List<String> = supplements.health

/**
 * Gives you all booster supplements
 * @return booster data
 */
fun getBoost(): List<String> = supplements.boost

/**
 * Gives you all muscle supplements
 * @return muscles data
 */
fun getMuscle(): List<String> = supplements.muscles


fun String.asResource(): String = object {}.javaClass.getResource(this)!!.readText()