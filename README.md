# YahooProjectDemo
# Project Title
Yahoo Demo Website Project

## Description
This project is designed to automate the testing of an Yahoo finance website using Robot Framework. The tests cover various functionalities of the Yahoo platform, including creating an account and login.

## Table of Contents
1. [Description](#description)
2. [Features](#features)
3. [Project Structure](#project-structure)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Test Cases](#test-cases)
7. [Contributing](#contributing)
8. [Contact](#contact)

## Features
- Creating an account for yahoo

## Project Structure
Sauce_demo_website_project/
├── Configurations/
│ ├── Environment.resource
├── Tests/
│ ├── Account.robot
│ │ ├── QAA-001 Create Yahoo Account
├── resources/
│ ├── keywords/
│ │ ├── Account.resource
├── results/
│ ├── log.html
│ ├── report.html
│ └── output.xml
├── README.md

## Installation
To set up the project, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/kanthi111/YahooProjectDemo.git
   cd YahooProjectDemo

## Usage
1. Run all test cases:
    robot tests/
2. Run a specific test suite:
    robot Tests/Account.robot
3. Run tests with a specific tag:
    robot -i critical tests/

## Test Cases
Here is a brief overview of the test cases included in this project:

Login Tests
1. Account.robot: Verifies user account creation.

##  Issues
Despite following the instructions provided, I am facing some difficulties. Here are the details of the issue:

1. Problem Description: Two factor Authentication I need to provide phone number to get OTP
2. Steps Taken: Security reasons I am unable to automate this page and stop the test by logging in console
3. Message: Add phone number
4. Browser/Device Information: Google Chrome on Windows 10

## Contributing
1. To contribute to this project, please follow these steps:
2. Fork the repository.
3. Create a new branch (git checkout -b feature-123).
4. Make your changes.
5. Commit your changes (git commit -m 'Add something').
6. Push to the branch (git push origin feature-123).
7. Create a new Pull Request.

## Contact
For any queries or support, please contact:
Email: srikanthi.makkuva@gmail.com
