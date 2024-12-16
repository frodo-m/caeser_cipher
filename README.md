# Caesar Cipher Program

This is a simple Ruby implementation of a Caesar Cipher. The program shifts the characters of a given string by a specified number of positions, wrapping around the alphabet. Non-alphabetic characters remain unchanged.

## Features

- Supports both uppercase and lowercase letters.
- Handles non-alphabetic characters gracefully by leaving them unaltered.
- Easily customizable for different shift values.

## How It Works

1. **Shifting Characters**:
   - Each character is shifted by a specified number of positions in the alphabet.
   - If the shift moves past 'z' or 'Z', it wraps back to the beginning of the alphabet.

2. **Character Validation**:
   - Characters are checked for whether they are uppercase or lowercase.
   - Non-alphabetic characters are ignored.

3. **Core Logic**:
   - The program uses the ASCII values of characters for arithmetic operations and then converts them back to characters.

## Code Structure

### `cipher(str, shifter)`
This is the main method that takes a string and a shift value as input and returns the encoded string.

### `shift_char(char, shifts)`
Determines how a single character should be shifted based on whether it is uppercase or lowercase.

### `shifter(char, base, shifts)`
Handles the core arithmetic for character shifting. This method uses modular arithmetic to wrap shifts around the alphabet.

### Output
The program will encode the input text by shifting each character by 9 positions.

## Customization

To adjust the shift value, modify the second argument in the `cipher` method call. For example:

```ruby
puts cipher("Hello, World!", 3) # Shifts by 3

---

Happy coding!
