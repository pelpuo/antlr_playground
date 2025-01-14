### To reference ANTLR jar

```
java -jar /usr/local/lib/antlr-4.13.2-complete.jar
```

### To launch ANTLR tool

```
java org.antlr.v4.Tool
```

### Create alias for ANTLR
```
alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
```
Now ANTLR can be accessed using the `antlr4` keyword in the terminal

### Setting up the TestRig
TestRig is a testing tool in the ANTLR runtime library that displays information about how a recognizer matches input from a file or standard input.

```
alias grun='java org.antlr.v4.runtime.misc.TestRig'
```

#### Grun commands

```
grun Hello r -tokens    # Start the TestRig on grammar Hello at rule r

grun Hello r -tree      # Print the parse tree in list stype test

grun Hello r -gui       # Show results in gui
```

### Other Grun options
* `-tokens` prints out the token stream
* `-tree` prints out the parse tree in LISP form
* `-gui` displays the parse tree visually in a dialog box
* `-ps file.ps` generates a visual representation of the parse tree in a PostScript and stores it in a `file.ps`. 
* `-encoding encodingname` specifies the test rig input file encoding if the current
locale would not read the input properly.