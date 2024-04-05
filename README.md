# Super Delta Bros. 2
![Logo](tools/smb2-0.png "Logo")

----

## Building

This is designed for use with [asm6f](https://github.com/freem/asm6f/).
For your convenience, binaries of that have been included. (Windows/Linux)

### Windows
Open a command prompt window and run:

    build           (builds PRG1)

This will build the ROM from the assembly, and print any errors in the process.
It will then output the SHA-256 hashes of PRG0 and PRG1, as well as the SHA-256
hash of the assembled ROM, useful if you intend to keep a one-to-one build.

### Linux, etc
A version of `asm6f` built under Ubuntu has been included under `tools/`.
To build, run the following command:

	./build.sh           (builds PRG1)
	./build.sh test      (builds both PRG0 and PRG1, verifying they match)

The build script will also display a message if the built ROM's SHA-256 hash
matches either PRG0 or PRG1.

### Output
The build process will generate a few files:

* `bin/smb2.nes`, your assembled ROM.
* `bin/smb2.lst`, the assembler listing. Use this to see how the code assembled.
* `bin/assembler.txt`, the log from the assembler
* `bin/smb2.*.nl`, name-listing files for FCEUX's debugger.
* Some other cruft, probably. welp

## Assembly
The "source" lives in the `src` directory:

* `prg-x-x.asm` are the program banks. They are grouped in pairs, as that is how
  SMB2 loads them. If you want to change this, you will need to split them apart again.
* `defs.asm` defines various enums and identifiers.
* `ram.asm` contains labels and definitions for RAM addresses.
* `extras/` contains some additional fun things (see `config.asm`).
* `levels/` contains level and enemy data.
* `music/` contains music and sound data.
