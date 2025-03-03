#!/bin/bash

# Define project directory
PROJECT_DIR="$HOME/laravel_project"

# Ask for the repository URL
read -p "Enter your Laravel project GitHub repository URL: " REPO_URL

# Clone the repository
echo "Cloning repository..."
git clone "$REPO_URL" "$PROJECT_DIR" || { echo "Failed to clone repository!"; exit 1; }

# Navigate to the project directory
cd "$PROJECT_DIR" || { echo "Failed to enter project directory!"; exit 1; }

# Copy .env.example to .env
echo "Setting up environment file..."
cp .env.example .env

# Install dependencies
echo "Installing Composer dependencies..."
composer install

# Generate application key
echo "Generating application key..."
php artisan key:generate

# Set permissions
echo "Setting permissions..."
chmod -R 775 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache

echo "Laravel project setup complete!"
echo "Navigate to $PROJECT_DIR and configure your database settings."
