import main.getHealth

fun main() {
    val health = getHealth()

    health.forEach {
        println(it)
    }
}