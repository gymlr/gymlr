import main.getMuscle

fun main() {
    val muscle = getMuscle()

    muscle.forEach {
        println(it)
    }
}