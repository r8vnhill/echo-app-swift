/// Command-line entry point for the echo application.
///
/// This script reads all arguments passed to the executable (excluding the first, which is the
// executable path), and echoes each one using the `echo` function from the `Lib` module.
///
/// ## Example:
/// ```sh
/// swift run App "So comes snow after fire," "and even dragons have their endings."
/// // Output:
/// // So comes snow after fire,
/// // and even dragons have their endings.
/// ```
///
/// The `echo` function must be defined and publicly accessible in the imported `Lib` module.
import Lib

func main() {
    // Exclude the first argument (the executable path)
    let args = CommandLine.arguments.dropFirst()
    for arg in args {
        print(echo(arg))
    }
}

main()
