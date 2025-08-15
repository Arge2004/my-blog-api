#!/bin/bash

# Create .env file from env.example
if [ ! -f .env ]; then
    echo "Creating .env file from env.example..."
    cp env.example .env
    echo ".env file created successfully!"
    echo "Please review and modify the .env file as needed."
else
    echo ".env file already exists. Skipping creation."
fi

# Make the script executable
chmod +x setup-env.sh

echo ""
echo "Environment setup complete!"
echo "You can now:"
echo "1. Review the .env file and modify values if needed"
echo "2. Start your database with: docker-compose -f docker-compose.dev.yaml up -d"
echo "3. Run your NestJS application with: npm run start:dev"
