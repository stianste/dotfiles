#/bin/bash

numJavaFiles=(`find . -name "*.java" | wc -l`)
numKotlinFiles=(`find . -name "*.kt" | wc -l`)

if [ $numJavaFiles != 0 ]; then 
   echo "Directory has java files. Formatting accordingly"
   test -f ./pom.xml && mvn prettier:write 
   # No gradle + prettier repos yet, so don't know what this command will actually be
   test -f ./gradlew && ./gradlew pretterWrite
fi

if [ $numKotlinFiles != 0 ]; then 
   echo "Directory has kotlin files. Formatting accordingly"
   test -f ./pom.xml && mvn antrun:run@ktlint-format
   test -f ./gradlew && ./gradlew ktlintFormat
fi

test -f ./package.json && npm run prettier:fix
# test -d frontend && cd frontend && npm run prettier:fix || test -d ../frontend && cd -
