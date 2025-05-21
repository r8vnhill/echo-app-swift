#!/bin/sh

set -e  # Exit immediately if a command exits with a non-zero status

echo "📦 Creating project structure..."

for file in \
  Sources/App/main.swift \
  Sources/Lib/Echo.swift \
  Tests/EchoTests.swift
do
  dir=$(dirname "$file")
  mkdir -p "$dir"
  touch "$file"
  echo "✅ $file"
done

echo "🟢 Project initialized successfully."
