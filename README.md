# CMS PDO System Project Setup Guide

This guide will walk you through setting up the **CMS PDO System** on your local machine using **XAMPP**.

## Prerequisites

- Download and install [XAMPP](https://www.apachefriends.org/index.html) (includes Apache and MySQL).
- Extract the project folder (zip) to your `htdocs` directory in the XAMPP installation directory.

## Steps

### 1. Install and Setup XAMPP

1. **Download and Install XAMPP**:
   - Go to the [XAMPP website](https://www.apachefriends.org/index.html) and download the installer for your operating system.
   - Follow the installation instructions.

2. **Extract the Project**:
   - Extract the downloaded project folder (e.g., `mvc-app.zip`) into the `htdocs` directory located in your XAMPP installation folder (typically `C:\xampp\htdocs`).

### 2. Start XAMPP

1. **Run XAMPP as Administrator**:
   - Open the XAMPP Control Panel as Administrator (right-click and select "Run as administrator").

2. **Start Apache and MySQL**:
   - In the XAMPP Control Panel, click on **Start** next to **Apache** and **MySQL** to start the server and database.

### 3. Setup the Database

1. **Open phpMyAdmin**:
   - Once Apache and MySQL are running, click on **Admin** next to **Apache** in the XAMPP Control Panel to open `phpMyAdmin` in your web browser.

2. **Create a New Database**:
   - In phpMyAdmin, click on **New** in the left sidebar to create a new database.
   - Enter the name of the database. This should be the same as the database name specified in the project files (usually mentioned in the project's documentation or configuration file).

3. **Import the SQL File**:
   - In the new database, click on the **Import** tab.
   - Under **File to import**, click **Choose File** and select the `.sql` file located in the `database` folder of the project directory.
   - Click **Go** to import the SQL file into the newly created database.

### 4. Configure Virtual Host for Local Development

To properly set up your project using a virtual host (for easier access and more flexibility), follow these steps:

1. **Update `httpd-vhosts.conf`**:
   - Navigate to `C:\xampp\apache\conf\extra\httpd-vhosts.conf`.
   - Open the `httpd-vhosts.conf` file in a text editor (e.g., Notepad++ or Visual Studio Code) **as Administrator**.
   - Add the following VirtualHost configuration at the end of the file:
     ```apache
     <VirtualHost *:80>
         ServerAdmin webmaster@dummy-host2.example.com
         DocumentRoot "C:/xampp/htdocs/mvc-app/public"
         ServerName mvc-app.local
     </VirtualHost>
     ```

   - Ensure that the `DocumentRoot` points to the `public` directory within your project folder (replace `mvc-app` with the actual folder name if different).

2. **Update `hosts` File**:
   - Navigate to `C:\Windows\System32\drivers\etc\hosts`.
   - Open the `hosts` file in a text editor **as Administrator** (you might need to run Notepad as Administrator).
   - Add the following lines at the end of the file:
     ```
     127.0.0.1       mvc-app.local
     ::1             mvc-app.local
     ```

3. **Restart Apache**:
   - After making these changes, restart Apache from the XAMPP Control Panel.

### 5. Access the CMS

1. **Access the Project**:
   - Once the database is set up and the virtual host is configured, you can access the CMS system by navigating to:
     ```
     http://mvc-app.local
     ```
   - This should load the CMS PDO System in your browser, where you can start working with the application.

### 6. Additional Documentation

For further details on setting up virtual hosts or resolving any issues, you can refer to this [documentation on setting up virtual hosts in XAMPP](https://blog.codingfaculty.com/set-up-multiple-hosts-virtual-hosts-in-xampp-on-windows/).

---

### Notes:

- Make sure to replace `mvc-app` with the actual project folder name if different.
- If you're facing issues with Apache, try restarting XAMPP or checking for any conflicting services.

## Troubleshooting

- **Apache Not Starting**: If Apache does not start, check if there are any port conflicts (especially with port 80 or 443). You can change the port in the `httpd.conf` and `httpd-ssl.conf` files in the XAMPP control panel.
- **Database Issues**: If the database connection fails, double-check your database credentials in the configuration files.

---

That's it! You've successfully set up the **CMS PDO System** with virtual host configuration on **XAMPP**.
