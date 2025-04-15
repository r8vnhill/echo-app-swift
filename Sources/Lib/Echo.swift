/// Returns the input message unchanged.
///
/// This function provides a minimal echo utility. It simply returns the string that was passed in,
// and can be used for demonstration, testing, or composing functional pipelines.
///
/// ## Example:
/// ```swift
/// let response = echo("Every champion was once a contender who refused to give up.")
/// print(response) // Output: Every champion was once a contender who refused to give up.
/// ```
///
/// - Parameter message: The message to echo.
/// - Returns: The same message that was passed in.
public func echo(_ message: String) -> String {
    return message
}
