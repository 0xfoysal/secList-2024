# SecLists Installation Script

This is a Bash script designed to automate the process of downloading and installing `SecLists` version 2024.3 on Parrot OS.

## Features
- Updates system packages to ensure the latest versions.
- Downloads `SecLists` version 2024.3 from the official GitHub repository.
- Extracts and moves the SecLists directory to `/usr/share/wordlists` for easy access.
- Cleans up temporary files after installation.
- Verifies the installation.

## Requirements
- Parrot OS or other Debian-based Linux distributions.
- `wget` and `tar` installed on your system.
- Sudo privileges.

## Installation

1. **Download the script:**
   Save the script as `install_seclists.sh` in your desired directory.

2. **Make the script executable:**
   ```bash
   chmod +x install_seclists.sh
3. Run the script
  ```bash
  ./install_seclists.sh
```
4. Verification
   ```
   ls /usr/share/wordlists/SecLists
   ```

