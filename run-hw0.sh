#!/bin/sh

HW=hw0

if [ ! -f src/edu/upenn/cis/cis555/hw0/HelloWorld.java ]; then
  echo "You need to write HelloWorld.java yourself"
  echo "(in the proper package: edu.upenn.cis.cis555.hw0)"
  echo "before you can run hw0!"
  exit
fi

# For the "real" homework projects, you will probably want to create
# customized scripts like this one which also provide command line
# arguments, and perhaps also handle input/output logging, running
# of unit tests, etc.

# Assuming 555-build.sh is in the $PATH...
555-build ${HW}

echo "=========================== Main Program ==========================="
java -cp bin/ edu.upenn.cis.cis555.${HW}.HelloWorld
echo "========================= JUnit Test Cases ========================="
java -cp lib/junit.jar:bin/ junit.textui.TestRunner test.edu.upenn.cis.cis555.${HW}.RunAllTests
