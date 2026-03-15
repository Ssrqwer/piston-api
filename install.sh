#!/bin/bash

echo "Installing languages..."

# The API image has CLI at /piston/packages/cli
cd /piston/packages/cli

# Install your languages
node index.js install node
node index.js install typescript
node index.js install python
node index.js install java
node index.js install go
node index.js install rust
node index.js install cpp
node index.js install csharp
node index.js install ruby
node index.js install swift

echo "Languages installed. Starting API..."

# Start the API server (located at /piston/api)
cd /piston/api
node index.js
