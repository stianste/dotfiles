import sys

def convert_char_to_emoji(char):
    if char.isalnum():
        return f":alphabet-yellow-{char.lower()}:"
    elif char == " ":
        return "   "
    else:
        return char

def convert_string_to_emojies(input):
    return "".join(map(convert_char_to_emoji, input))

def __main__():
    if len(sys.argv) != 2:
        print("Please provide a string to convert")
        return
    print(convert_string_to_emojies(sys.argv[1]))

__main__()
