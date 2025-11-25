# Garbage Collection Management System

A web-based system for managing garbage collection services in smart cities.

## Prerequisites

1. Windows Operating System
2. XAMPP or WAMP Server

## Installation

1. Install XAMPP or WAMP server on your Windows machine
2. Clone or download this repository
3. Copy the entire "gms" folder to your web server directory:
   - For XAMPP: `C:\xampp\htdocs\`
   - For WAMP: `C:\wamp64\www\` or `C:\wamp\www\`

## Database Setup

1. Start Apache and MySQL services in your XAMPP/WAMP control panel
2. Open phpMyAdmin (usually at http://localhost/phpmyadmin)
3. Create a new database named `garbagemsdb`
4. Select the `garbagemsdb` database
5. Click on the "Import" tab
6. Choose the `database_setup.sql` file from this project
7. Click "Go" to import the database structure and sample data

## Running the Application

1. Start Apache and MySQL services in your XAMPP/WAMP control panel
2. Open your web browser
3. Navigate to http://localhost/gms/

## Default Login Credentials

### Admin Panel
- URL: http://localhost/gms/admin/login.php
- Username: admin
- Password: admin

### Driver Panel
- URL: http://localhost/gms/driver/login.php

### User Panel
- URL: http://localhost/gms/user/login.php

## Features

- Admin Dashboard for managing the entire system
- Driver Portal for garbage collectors
- User Portal for residents to request garbage collection
- Location-based service allocation
- Real-time tracking of collection status

## Troubleshooting

If you encounter any issues:

1. Make sure Apache and MySQL services are running
2. Check that the database connection settings in `includes/dbconnection.php` are correct
3. Ensure all files are in the correct directory
4. Verify that the database was imported successfully

For additional support, refer to the setup_guide.txt file included in this project.