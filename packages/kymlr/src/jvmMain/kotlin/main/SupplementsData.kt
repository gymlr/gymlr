package main

import kotlinx.serialization.Serializable

@Serializable
data class SupplementsData(
    val boost: List<String>,
    val health: List<String>,
    val muscles: List<String>
)
