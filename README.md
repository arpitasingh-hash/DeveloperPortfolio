# Question 2: Shell Scripting & Automation

**Name:** Sanskriti  
**Roll Number:** 2601730034  
**Course:** DeveloperPortfolio Assignment  
**Operating System:** Ubuntu (WSL 2)

## Overview

This section contains two Bash shell scripts developed to automate practical developer tasks using Linux commands and shell scripting.

## 2A. sysinfo.sh – System Information Report

**File:** `sysinfo.sh`

This script generates a formatted system information report.

### Features
- Displays student name, roll number and current date.
- Retrieves CPU model and number of cores.
- Displays total and used memory.
- Lists the top 3 processes by CPU usage.
- Displays a successful report generation message.

### Execution

```bash
chmod +x sysinfo.sh
./sysinfo.sh
```

Output is saved in `sysinfo_output.txt`.

## 2B. backup.sh – Folder Backup

**File:** `backup.sh`

This script creates compressed backups of a specified directory.

### Features
- Checks whether a source folder is provided.
- Verifies that the folder exists.
- Creates a compressed `.tar.gz` archive.
- Uses a timestamp in the backup filename.
- Displays the backup filename and file size.
- Maintains a backup log in `~/DeveloperPortfolio_Backups/backup.log`.

### Execution

```bash
chmod +x backup.sh
./backup.sh ~/DeveloperPortfolio
```

## Folder Structure

```text
ShellScripts/
│
├── sysinfo.sh
├── sysinfo_output.txt
├── backup.sh
└── README.md

Screenshots/
└── backup_demo.png
```

## Tools Used

- Ubuntu Linux (WSL 2)
- Bash Shell
- lscpu
- free
- awk
- ps
- sort
- head
- tar
- Git and GitHub

## Conclusion

Both shell scripts demonstrate practical knowledge of Bash scripting, Linux system commands, automation, file handling and backup management.

**Submitted by: Sanskriti**  
**Roll Number: 2601730034**	
