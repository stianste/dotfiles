import sys

def convert_string_to_emojies(input):
    return "".join(list(map(lambda x: f":alphabet-yellow-{x.lower()}:" if x.isalnum() else x, input)))

def __main__():
    if(len(sys.argv) != 2):
        print("Please provide a string to convert")
        return
    print(convert_string_to_emojies(sys.argv[1]))

__main__()
