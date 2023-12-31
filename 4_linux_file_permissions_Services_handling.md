**Linux Basics: User and Group Permissions**

In Linux, user and group permissions are essential for controlling access to files and directories. Permissions determine who can read, write, and execute files, and they are categorized into three groups: owner, group, and others. Users and groups are identified by their respective IDs.

- **User Permissions:**
  - **Read (`r`):** Allows a user to view the content of a file.
  - **Write (`w`):** Allows a user to modify the content of a file or create new files in a directory.
  - **Execute (`x`):** Allows a user to run executable files or access directories. For directories, this permission is required to list its contents.

- **Group Permissions:**
  - Group permissions work similarly to user permissions but apply to a specific group of users.
  - Users who belong to the group that owns a file or directory inherit the group's permissions.

- **Other Permissions:**
  - These permissions apply to all other users who are not the owner or in the group associated with the file or directory.

**Changing Permissions:**
- **Using Alphabetic Notation:**
  - `chmod` command is used to change permissions.
  - Syntax: `chmod who=permissions filename/directory`
  - Example: `chmod u+rwx,g+rw,o-rx file.txt`
    - `u+rwx` adds read, write, and execute permissions for the owner.
    - `g+rw` adds read and write permissions for the group.
    - `o-rx` removes read and execute permissions for others.

- **Using Numeric Notation:**
  - Each permission is assigned a numeric value: read (4), write (2), execute (1).
  - Add values to grant permissions and subtract values to revoke permissions.
  - Example: `chmod 754 file.txt`
    - Owner: read+write+execute (4+2+1 = 7)
    - Group: read+execute (4+1 = 5)
    - Others: read (4)

**Changing Ownership:**
- `chown` command is used to change ownership of files and directories.
- Syntax: `chown new_owner:new_group filename/directory`
- Example: `chown alice:users file.txt`
  - Changes the owner to user `alice` and the group to `users`.

**Sudo Privilege:**
- "sudo" stands for "superuser do" and allows authorized users to execute commands as the superuser or another user, as specified in the sudoers configuration.
- Superuser (root) has unrestricted control over the system.
- Sudo access provides a balance between security and administrative tasks.
- Users with sudo privileges can execute commands requiring elevated privileges by providing their own password.

**Website Deployment Session Commands:**
- Updating package lists: `sudo apt update`
- Installing packages: `sudo apt install ... -y`
- Starting Apache: `sudo systemctl start apache2`
- Enabling automatic Apache start: `sudo systemctl enable apache2`
- Downloading files: `sudo wget ...`
- Extracting files: `sudo unzip ...`
- Removing files: `sudo rm ...`
- Copying files: `sudo cp -r ...`
- Restarting Apache: `sudo systemctl restart apache2`
- Checking Apache status: `sudo systemctl status apache2`
- Displaying text using figlet: `figlet done`

## Explanation
 
Command 1: `sudo apt update`

This command updates the package lists for upgrades and updates available on the system. It checks for the latest version of packages available in the repositories and updates the local cache on the system.

Command 2: `sudo apt install wget net-tools unzip figlet apache2 -y`

This command installs the packages `wget`, `net-tools`, `unzip`, `figlet`, and `apache2` on the system. The `-y` option is used to answer yes to any prompts during installation.

Command 3: `sudo systemctl start apache2`

This command starts the Apache web server. The `systemctl` command is used to manage services on the system.

Command 4: `sudo systemctl enable apache2`

This command enables the Apache web server to start automatically on system boot.

Command 5: `sudo wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip`

This command uses `wget` to download a zip file from the specified URL.

Command 6: `sudo unzip 2135_mini_finance.zip`

This command extracts the contents of the `2135_mini_finance.zip` file.

Command 7: `sudo rm /var/www/html/*`

This command removes all files and directories in the `/var/www/html/` directory.

Command 8: `sudo cp -r 2135_mini_finance/* /var/www/html/`

This command copies the contents of the extracted zip file to the `/var/www/html/` directory. The `-r` option is used to copy directories recursively.

Command 9: `sudo systemctl restart apache2`

This command restarts the Apache web server to apply changes made to the `/var/www/html/` directory.

Command 10: `sudo systemctl status apache2`

This command displays the status of the Apache web server.

Command 11: `figlet done`

This command displays the word "done" in large ASCII text using the `figlet` package.
