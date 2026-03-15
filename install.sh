#!/bin/bash

# The working directory inside the container is /piston
echo "Starting Piston setup..."

# --- Install Languages using the OFFICIAL CLI path ---
cd /piston/cli

echo "Installing JavaScript/Node.js..."
node index.js ppman install node

echo "Installing TypeScript..."
node index.js ppman install typescript

echo "Installing Python..."
node index.js ppman install python

echo "Installing Java..."
node index.js ppman install java

echo "Installing Go..."
node index.js ppman install go

echo "Installing Rust..."
node index.js ppman install rust

echo "Installing C++..."
node index.js ppman install cpp

echo "Installing C#..."
node index.js ppman install csharp

echo "Installing Ruby..."
node index.js ppman install ruby

echo "Installing Swift..."
node index.js ppman install swift

echo "All languages installed successfully!"

# --- Start the Main API Server using the OFFICIAL path ---
echo "Starting Piston API server..."
cd /piston
node index.js
