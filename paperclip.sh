#!/usr/bin/env bash

cp ./PaperSpigot-Server/build/libs/paperspigot-server-all.jar ./Paperclip/paperspigot-1.8.8.jar
cp ./work/1.8.8/1.8.8.jar ./Paperclip/minecraft_server.1.8.8.jar
cd ./Paperclip
mvn clean package -Dmaven.compiler.release=1.8
cd ..
cp ./Paperclip/target/paperclip*-SNAPSHOT.jar ./Paperclip.jar

echo ""
echo ""
echo ""
echo "Build success!"
echo "Copied final jar to $(pwd)/Paperclip.jar"
