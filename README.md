# 📊 Ruby on Rails CSV File Reader
This is a Ruby code that reads CSV files and displays their content in a user-friendly table format in the console. The application utilizes the following Ruby gems:
- csv (for handling CSV files)
- tty-prompt (for user interaction and selection)
- console_table (for displaying CSV data as tables)

## ✨Features
Reads all CSV files from a directory.
Displays a list of available CSV files in the console.
Allows the user to select a file to view.
Displays the content of the selected CSV file in a formatted table.
Continues to prompt until the user selects the "Quit" option.

## 🛠️ Modules
The project is divided into four modules for better code organization:
### reader Module:
Manages data fetching from the file system.
### FileManager Module:
Handles file operations.
### fetcher Module:
Responsible for reading and parsing CSV files.
Uses Ruby's built-in CSV library to load and process CSV content.
### Start Module:
Main entry point of the application.
Uses TTY-Prompt to create a user interface for selecting files and quitting the application.
Displays the selected CSV content using ConsoleTable.

## 📦 Gems Required
To run the project, ensure you have installed the following gems:
* tty-prompt
* console_table
* csv

## ⚙️ How It Works
The Start module initializes the application and prompts the user to select a CSV file from the available list.
The reader module reades the available CSV files.
Once a file is selected, the fetcher module reads the contents of the CSV file.
The contents are then displayed in the console in a table format using ConsoleTable.
The user is prompted again to select another file or quit.

#### Example Workflow
On running the application, you will see a list of available CSV files:
Please choose a file to display:
1. data1.csv
2. data2.csv
3. Quit
After selecting a file (e.g., data1.csv), the content will be displayed in a table:

| Name   | Age  | Email               |
|--------|------|---------------------|
| ahmad   | 45   | ahmad@example.com     |
| fatma  | 23   | fatma@example.com    |

After viewing the file, you will be prompted to choose another file or quit the application.

## Installation and Usage
Clone the repository from GitHub.
git clone https://github.com/rubaM8/ruby-code.git
Navigate to the project directory.

cd rails-csv-reader
Install the required gems.
bundle install
or 
bundle exec ruby start.rb
The application will start in the terminal, and you'll be prompted to select a CSV file to display.
