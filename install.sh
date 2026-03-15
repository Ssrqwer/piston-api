#!/bin/bash

# Install languages using the Piston CLI
cd /piston/packages

# Install your languages
echo "Installing JavaScript/Node.js..."
./cli/index.js install node

echo "Installing TypeScript..."
./cli/index.js install typescript

echo "Installing Python..."
./cli/index.js install python

echo "Installing Java..."
./cli/index.js install java

echo "Installing Go..."
./cli/index.js install go

echo "Installing Rust..."
./cli/index.js install rust

echo "Installing C++..."
./cli/index.js install cpp

echo "Installing C#..."
./cli/index.js install csharp

echo "Installing Ruby..."
./cli/index.js install ruby

echo "Installing Swift..."
./cli/index.js install swift

echo "All languages installed!"

# Now execute the original image's entrypoint
# The official image uses this as its default command
exec node /piston/api/index.js