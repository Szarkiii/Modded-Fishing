#!/bin/bash
# Download gradle wrapper jar
mkdir -p gradle/wrapper
cd gradle/wrapper
wget -q https://github.com/gradle/gradle/releases/download/v8.6/gradle-8.6-wrapper.jar -O gradle-wrapper.jar 2>/dev/null || curl -L -o gradle-wrapper.jar https://github.com/gradle/gradle/releases/download/v8.6/gradle-8.6-wrapper.jar 2>/dev/null
echo "Gradle wrapper downloaded"
