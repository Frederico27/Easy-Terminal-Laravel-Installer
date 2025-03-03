# Laravel Project Setup

## Introduction
This project is a Laravel application cloned from a GitHub repository. Follow the steps below to set up the project on your local development environment.

## Prerequisites
Make sure you have the following installed on your system:
- PHP (>= 8.0)
- Composer
- MySQL or PostgreSQL
- Node.js & NPM
- Git
- A web server (Apache, Nginx, or Laravel Sail for Docker)

## Installation

### 1. Clone the Repository
Run the following command to clone the repository:
```bash
./clone_laravel.sh
```
This script will:
- Clone the repository
- Install Composer dependencies
- Generate the application key
- Set permissions

Alternatively, you can manually clone it:
```bash
git clone <repository-url> laravel_project
cd laravel_project
```

### 2. Set Up Environment Variables
Copy the `.env.example` file to `.env`:
```bash
cp .env.example .env
```
Update the `.env` file with your database credentials and other configurations.

### 3. Install Dependencies
Run the following command to install PHP dependencies:
```bash
composer install
```

### 4. Generate Application Key
```bash
php artisan key:generate
```

### 5. Run Database Migrations and Seeders (Optional)
```bash
php artisan migrate --seed
```

### 6. Install Frontend Dependencies (If Required)
```bash
npm install && npm run dev
```

### 7. Start the Server
Run the following command to start the Laravel development server:
```bash
php artisan serve
```
By default, the application will be available at `http://127.0.0.1:8000`.

## Additional Commands

### Clearing Cache
If you face issues, clear the cache:
```bash
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear
```

### Running Tests
To run tests, use:
```bash
php artisan test
```

## Contributing
Feel free to fork the repository and submit pull requests.

## License
This project is licensed under the MIT License.

