#!/bin/bash

# Simple integration test script for shopping-for-codespaces
# This script verifies that the app starts, serves content, and works correctly

set -e

echo "🧪 Running integration tests for shopping-for-codespaces..."

# Start the server in the background
echo "📱 Starting the server..."
npm start &
SERVER_PID=$!

# Wait for server to start
echo "⏳ Waiting for server to start..."
sleep 3

# Function to cleanup on exit
cleanup() {
    echo "🧹 Cleaning up..."
    kill $SERVER_PID 2>/dev/null || true
    wait $SERVER_PID 2>/dev/null || true
}
trap cleanup EXIT

# Test 1: Check if server is responding
echo "✅ Test 1: Checking if server responds..."
if curl -f -s http://localhost:3000 > /dev/null; then
    echo "✅ Server is responding on port 3000"
else
    echo "❌ Server is not responding on port 3000"
    exit 1
fi

# Test 2: Check if page contains expected title
echo "✅ Test 2: Checking page title..."
if curl -s http://localhost:3000 | grep -q "Shopping with Codespaces"; then
    echo "✅ Page contains correct title"
else
    echo "❌ Page title not found"
    exit 1
fi

# Test 3: Check if products are displayed
echo "✅ Test 3: Checking if products are displayed..."
if curl -s http://localhost:3000 | grep -q "Carrots" && curl -s http://localhost:3000 | grep -q "Lemons" && curl -s http://localhost:3000 | grep -q "Apples"; then
    echo "✅ All products are displayed"
else
    echo "❌ Not all products are displayed"
    exit 1
fi

# Test 4: Check if CSS is being served
echo "✅ Test 4: Checking if CSS is being served..."
if curl -f -s http://localhost:3000/css/main.css > /dev/null; then
    echo "✅ CSS is being served correctly"
else
    echo "❌ CSS is not being served"
    exit 1
fi

# Test 5: Check if FontAwesome icons are referenced
echo "✅ Test 5: Checking FontAwesome icons..."
if curl -s http://localhost:3000 | grep -q "fa-carrot\|fa-lemon\|fa-apple"; then
    echo "✅ FontAwesome icons are present"
else
    echo "❌ FontAwesome icons not found"
    exit 1
fi

echo ""
echo "🎉 All tests passed! The shopping-for-codespaces app is working correctly."
echo ""