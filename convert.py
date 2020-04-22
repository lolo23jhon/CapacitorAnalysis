from sys import stderr

SEPARATOR = ','
NEWLINE = '\n'


def main(input_filename, output_filename):
    lines = []
    try:
        with open(input_filename, 'r') as f:
            lines = f.readlines()
    except IOError:
        print(
            f"Unable to open input file \"{input_filename}\".", file=stderr)
        return 1

    text = str()
    final_col_index = len(lines[0].split()) - 1

    for line in lines:
        words = line.split()

        for i, w in enumerate(words):
            text += w
            text += NEWLINE if i == final_col_index else SEPARATOR

    try:

        with open(output_filename, 'w') as f:
            f.write(text)

    except IOError:
        print(
            f"Unable to open output file \"{output_filename}\".", file=stderr)
        return 1

    print(f"Created file \"{output_filename}\" succesfully.")
    input("Press Enter to exit.")
    return 0


if __name__ == "__main__":
    ifile = input("Input file name: ")
    ofile = input("Output filename ")
    main(ifile, ofile)
