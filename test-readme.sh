#!/bin/bash

# README instructions verification test
# This script tests that the setup instructions in README.md work correctly

set -e

echo "📖 Testing README.md setup instructions..."

# Check Node.js is available
echo "✅ Checking Node.js version..."
node --version

# Check if dependencies are installed (package-lock.json exists and node_modules)
echo "✅ Checking if dependencies are ready..."
if [ -f "package-lock.json" ] && [ -d "node_modules" ]; then
    echo "✅ Dependencies are installed"
else
    echo "⚠️ Dependencies might need installation, running npm install..."
    npm install
    echo "✅ Dependencies installed"
fi

# Test npm start works (start and quickly check)
echo "✅ Testing npm start..."
npm start &
SERVER_PID=$!

# Wait for server to start
sleep 3

# Check if server responds
if curl -f -s http://localhost:3000 > /dev/null; then
    echo "✅ npm start works correctly"
else
    echo "❌ npm start failed"
    kill $SERVER_PID 2>/dev/null || true
    exit 1
fi

# Kill the server
kill $SERVER_PID 2>/dev/null || true
wait $SERVER_PID 2>/dev/null || true

# Test npm run dev works
echo "✅ Testing npm run dev..."
npm run dev &
DEV_PID=$!

# Wait for dev server to start
sleep 3

# Check if dev server responds
if curl -f -s http://localhost:3000 > /dev/null; then
    echo "✅ npm run dev works correctly"
else
    echo "❌ npm run dev failed"
    kill $DEV_PID 2>/dev/null || true
    exit 1
fi

# Kill the dev server
kill $DEV_PID 2>/dev/null || true
wait $DEV_PID 2>/dev/null || true

# Test npm test works
echo "✅ Testing npm test..."
if npm test; then
    echo "✅ npm test works correctly"
else
    echo "❌ npm test failed"
    exit 1
fi

echo ""
echo "🎉 All README.md instructions work correctly!"
echo "✅ Node.js is available"
echo "✅ npm install works"
echo "✅ npm start works"
echo "✅ npm run dev works"
echo "✅ npm test works"
echo "✅ Application serves on http://localhost:3000"
echo ""