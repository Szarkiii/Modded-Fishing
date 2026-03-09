#!/bin/bash

echo ""
echo "===================================================="
echo "  MODDED FISHING AUTO-CLICKER - BUILD TOOL"
echo "===================================================="
echo ""

# Check Java
echo "Checking Java..."
if ! command -v java &> /dev/null; then
    echo ""
    echo "ERROR: Java is not installed!"
    echo ""
    echo "Please download Java from:"
    echo "https://www.java.com/download/"
    echo ""
    exit 1
fi

java -version

echo ""
echo "Java found. Building mod..."
echo ""
echo "This will take 5-15 minutes on first build."
echo "Please be patient..."
echo ""

# Make gradlew executable
chmod +x ./gradlew

# Build
./gradlew build

if [ $? -eq 0 ]; then
    echo ""
    echo "===================================================="
    echo "  SUCCESS! JAR CREATED"
    echo "===================================================="
    echo ""
    echo "Your JAR file is ready:"
    echo ""
    echo "   build/libs/moddedfishing-1.0.0.jar"
    echo ""
    echo "Next steps:"
    echo "1. Copy the JAR to: ~/.minecraft/mods/"
    echo "2. Launch Minecraft with Forge"
    echo "3. Press F while fishing to auto-click!"
    echo ""
else
    echo ""
    echo "BUILD FAILED"
    echo "Check error messages above"
    echo ""
    exit 1
fi
