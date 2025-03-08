# Log-Archive-Tool
Linux Portfolio Project for the Linux Roadmap Course created by Austin Hogan 
https://roadmap.sh/projects/log-archive-tool

## Overview
- Archive Logs on a set schedule
- compress them in a new directory
- useful for removing old logs and keeping the system clean
- Maintain the logs in compressed format for future reference
- most common location for logs on a unix based system is /var/log

- Future sprint
- store logs in cloud bucket

## Requirements

### Tool Requirements
- Should run from command line
- Should accept log directory as an argument
- Should compress the logs
- Should store them in a new directory

### User Requirements
- Should provide log directory as an arg when running tool
    - log-archive <log-directory>
- Should compress the logs in a tar.gz file & store in a new directory
- Tool should log the date & time of the archive to a file
    - logs_archive_20240816_100648.tar.gz