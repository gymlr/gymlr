import main.getBoost

fun main() {
    val boost = getBoost()

    boost.forEach {
        println(it)
    }
}