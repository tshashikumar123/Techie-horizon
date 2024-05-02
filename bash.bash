#!/bin/bash
# Ask user to provide GitHub URL
read -p "Enter GitHub URL: " github_url
# Clone the repository
git clone $github_url
cd shashi
# Create a new file
read -p "Enter file name to push: " a
touch $a
echo "File $a has been created"
# Add the new file to the repository
git add .
# Commit the changes
git commit -m "Added file"
# Push the changes to GitHub
git push origin main
# Display success message
echo "Changes pushed successfully to GitHub."
# Clean up temporary directory
cd ..
rm -rf shashi
