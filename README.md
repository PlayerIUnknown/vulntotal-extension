# VulnTotal Browser Extension

## Overview
The VulnTotal Browser Extension integrates the VulnTotal vulnerability analysis tool directly into your browser. By leveraging Pyodide, the extension allows you to perform vulnerability checks on software packages without relying on server-side components. The extension provides a user-friendly interface that displays analysis results.

## Features
- Runs VulnTotal directly in the browser using Pyodide.
- Displays vulnerability analysis results in a clear, table format.

## Installation
1. Clone the repository:
``` sh
git clone https://github.com/aboutcode-org/vulntotal-extension.git
cd vulntotal-extension
```
2. Build the Extension:
- On Linux, run:
```sh
./release.sh
```
- On Windows, run:
```sh
release.bat
```
This will generate the extension file (.crx) in the dist folder.

## Load the Extension:
- For Chrome: Go to chrome://extensions/, enable "Developer mode," and click "Load unpacked." Select the src folder.
- For Arc and other chrome-based extensions: Just drag and drop the .crx file into the browser window and accept the installation.

## Usage
Once installed, click on the extension icon in your browser toolbar.
Enter the Package URL (PURL) of the software you wish to analyze.
View the results displayed in the extension's interface.

## Screenshots
![results](https://github.com/user-attachments/assets/88fbea09-cf75-4b79-bd16-b51289162fe4)
![settings](https://github.com/user-attachments/assets/baec3721-24f0-4332-9c98-5cc431350191)
