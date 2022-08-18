#!/bin/bash

git submodule update --init && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && chmod +x ./gradlew && ./gradlew shadowJar && ./paperclip.sh

