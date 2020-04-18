CP=`ls libs/*.jar -w 1000000000 --format=commas | sed 's/, /:/g'`

javac -cp $CP GiraphHelloWorld.java

java -cp $CP it.unimi.dsi.webgraph.BVGraph -o -O -L $1 &&
java -cp $CP:. GiraphHelloWorld $1
