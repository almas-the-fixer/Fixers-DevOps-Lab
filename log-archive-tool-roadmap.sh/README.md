# Log Archiver

A simple Bash script to archive and compress logs from a given directory. Useful for keeping your system clean while maintaining logs for future reference.

## Project URL
[https://roadmap.sh/projects/server-stats](https://roadmap.sh/projects/server-stats)

## Author
Almas-the-Fixer

## Description
This tool compresses log files from a specified directory into a `tar.gz` archive and stores it in a dedicated `archives` folder on your Desktop. Each archive includes a timestamp to track when it was created.

## Features
- Accepts a log directory as an argument.
- Creates a timestamped `.tar.gz` archive.
- Stores archives in `~/Desktop/archives`.
- Logs warnings for active files that change during compression.
- Safe checks for invalid directories or missing arguments.

## Usage
```bash
bash log-archiver.sh <log-directory>
Example:

bash
Copy code
bash log-archiver.sh /var/log
The script will create an archive named like:

Copy code
logs_archive_2025_10_17__18_55_56.tar.gz
in ~/Desktop/archives.

Requirements
Linux / Unix-based system

Bash shell

tar command available

Notes
The script may show warnings for files that change while being read (e.g., journal logs). These are normal.

Archives are stored relative to the Desktop for easy access.
