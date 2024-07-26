# Project-Java-and-Web-Development-
DLBCSPJWD01


# Installation Guide

This document will quickly guide you into all the necessary steps to have access to my work. 
Remember to always start Command Prompt widows as Administrator!

## Prerequisites

The following components are required to be installed to access to be able to reproduce the work presented in this project:

- For the database: MySQL Server Workbench and Shell 8.0.
- For the backend server: node.js and npm.

## Set up the database

1. Download and install the MySQL installer 8.0.38 from the [official website](https://dev.mysql.com/downloads/installer/).
2. Run the installer and follow the prompts clicking on "Next". Then on "Finish" when the following prompt appears.

If you have trouble installing MySQL, a detailed step by step guide, with IMAGES, is available in the folder uploaded with this project.

1. Open the MySQL Workbench 8.0 CE (if not open automatically) and create a new connection by clicking on the "plus button" next to "MySQL Connections".
2. Give a name to the connection you leave everything else as it is. Then click on Ok.

Ensure that the connection has the following parameters (otherwise you need to edit the `server.js` file with new parameters):

- hostname: 127.0.0.1
- port: 3306
- username: root
- password: 1234

Click on the connection to access the database:

- Insert the password "1234". Then click Ok.

For the sake of simplicity, let's assume you have downloaded the files in this repository, extracted it on the desktop and renamed the folder from `Project-Java-and-Web-Development--main` to `myapp`.
Now we need to import the database using the Workbench. Click on the menu "Server" then select "Data import".

- Select "Import from Self-Contained File" in the "Data import" tab that you just opened.
- Click on the 3 dots button and select the `airbnb_db.sql` file to import from the `...\myapp\sql` folder.
- Click on the "Start Import" button.

You now have access to the imported database and your database server is running.

## Node.js and npm installation

1. Visit the [Node.js official website](https://nodejs.org/).
2. Download the LTS version for Windows.
3. Run the installer and follow the prompts to install Node.js and npm (Node Package Manager) clicking always on "Next". Then on "Finish" when the following prompt appears.

To verify the correct installation open the Command Prompt and type the commands `node -v` and `npm -v` to display the installed versions:

Now from the Command Prompt you need to change directory using the cd command and move inside the `myapp` folder containing this project. For example if you extracted the `myapp` folder on the desktop the command will be: `cd %userprofile%\Desktop\myapp`

Again from the Command Prompt run the command `npm install` to install all the dependencies listed in `package.json` file that inside the `myapp` folder.

## Starting the servers and browser

From the Command Prompt, change directory to  `cd %userprofile%\Desktop\myapp` and start the node.js Server by running the command `node server.js`

The node.js server is now running and ready to communicate with the web application.

Now open another Command Prompt window leaving open the other one with the node.js sever change directory go into the folder "html page" inside the myapp folder using the cd command: `cd %userprofile%\Desktop\myapp\html page`

Then type the command: `http-server -c-1 --cors`

Your static http-server is running.

Open your browser and paste in the URL address bar this address: `http://127.0.0.1:8080/page.html`

You can now use the web application!!


