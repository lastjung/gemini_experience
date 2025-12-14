#!/bin/bash
# Syncs the root index.html with the master version in gemini_portfolio/
# Run this script after making changes to gemini_portfolio/index.html

cp gemini_portfolio/index.html index.html
echo "✅ Successfully synced: gemini_portfolio/index.html -> ./index.html"
