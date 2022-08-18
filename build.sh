#!/bin/bash

git submodule update --init && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && chmod +x ./gradlew && ./gradlew shadowJar && cp ./PaperSpigot-Server/build/libs/paperspigot-server-all.jar ./paper.jar

