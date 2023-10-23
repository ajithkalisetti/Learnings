# FILESYSTEM HIERARCHY SYSTEM

Linux uses a single-rooted, inverted tree-like file system hierarchy:

- `/`: This is the top-level directory, also known as the root directory. It is the parent directory for all other directories and is represented by a forward slash (`/`). It's analogous to `C:\` in Windows.
  - `/root`: This is the home directory for the root user (super user), providing a working environment for the root user. In Windows, this might be similar to `C:\Documents and Settings\Administrator`.
  - `/home`: This is the home directory for other users, providing a working environment for users other than the root user. In Windows, this might be similar to `C:\Documents and Settings\username`.
- `/boot`: This directory contains bootable files for Linux, including the kernel (`vmlinuz`), initial RAM disk (`initrd`), and the GRUB (Grand Unified Boot Loader) configuration. In Windows, it's comparable to the `C:\Windows\System32\drivers` directory.
- `/etc`: This directory contains all configuration files, such as `/etc/passwd` (user information), `/etc/resolv.conf` (preferred DNS settings), and `/etc/dhcpd.conf` (DHCP server configuration). These are similar to configuration files in Windows.
- `/usr`: By default, software is installed in the `/usr` directory (UNIX Sharable Resources). In Windows, this is similar to `C:\Program Files`.
  - `/opt`: This is an optional directory within `/usr` and contains third-party software. In Windows, this is similar to `C:\Program Files`.
- `/bin`: This directory contains commands used by all users, often referred to as binary files. In Windows, these are executable files used by all users.
- `/sbin`: This directory contains commands used by the superuser (root), often referred to as superuser's binary files. In Windows, these would be executable files for system administrators.
- `/dev`: This directory contains device files, similar to the device manager in Windows. For example, `/dev/hda` represents the hard disk, and `/dev/cdrom` represents the CD-ROM drive.
- `/proc`: This directory contains process files. Its contents are not permanent and keep changing. It is often referred to as a virtual directory. Files within `/proc` contain useful information used by the operating system, such as `/proc/meminfo` (information about RAM and swap) and `/proc/cpuinfo` (information about the CPU).
- `/var`: This directory contains variable data like mails and log files.
- `/mnt`: This is the default mount point for any partition and is empty by default.
- `/media`: This directory contains all removable media such as CD-ROMs and pen drives.
- `/lib`: This directory contains library files used by the operating system, similar to DLL files in Windows. Library files in Linux are shared object (SO) files.

This Markdown representation describes the Linux file system hierarchy and makes it easier to understand its structure and equivalent concepts in Windows.

# VIM EDITOR

`vi` - visual display editor
`vim` - visual display editor improved

This is command mode editor for files. Other editors in Linux are emacs, gedit. `vi` editor is most popular.

# Vim Editor Modes and Commands

Vim is a text editor with three primary modes:

1. **Command Mode**: This is the default mode when you open Vim.

    - To move the cursor in Command Mode:
        - `h` to move left.
        - `l` to move right.
        - `k` to move up.
        - `j` to move down.

2. **Insert Mode**: To enter Insert Mode, use the following commands:

    - `i` to begin insert mode at the cursor position.
    - `I` to insert at the beginning of the line.
    - `a` to append to the next word's letter.
    - `A` to append at the end of the line.
    - `o` to insert a new line below the cursor position.
    - `O` to insert a new line above the cursor position.

3. **Command Mode**: In Command Mode, you can execute various commands:

    - `gg` to go to the beginning of the page.
    - `G` to go to the end of the page.
    - `w` to move the cursor forward word by word.
    - `b` to move the cursor backward word by word.
    - `nw` to move the cursor forward n words (e.g., `5w` for 5 words).
    - `nb` to move the cursor backward n words (e.g., `5b` for 5 words).
    - `u` to undo the last change (word).
    - `U` to undo the previous changes (entire line).
    - `Ctrl+R` to redo the changes.
    - `yy` to copy a line.
    - `nyy` to copy n lines (e.g., `5yy` or `4yy`).
    - `p` to paste a line below the cursor position.
    - `P` to paste a line above the cursor position.
    - `dw` to delete a word letter by letter (like Backspace).
    - `x` to delete a word letter by letter (like DEL key).
    - `dd` to delete the entire line.
    - `ndd` to delete n lines from the cursor position (e.g., `5dd`).

4. **Search Mode**: In Command Mode, you can search for a word in the file using `/`.

5. **Extended Mode (Colon Mode)**: To access Extended Mode, press `Esc` and then `:`.

    - `:w` to save the changes.
    - `:q` to quit without saving.
    - `:wq` to save and quit.
    - `:w!` to save forcefully.
    - `:wq!` to save and quit forcefully.
    - `:x` to save and quit.
    - `:X` to give a password to the file and remove a password.
    - `:20` (or `:20n`) to go to line number 20 or n.
    - `:set nu` to set line numbers in the file.
    - `:set nonu` to remove the set line numbers.

Here's the information you provided converted into Markdown syntax:

# Types of Files

There are various types of files in a Linux file system:

- **Normal file**: A regular file that contains data.
- **Directory (d)**: A special file that contains a list of file and directory names.
- **Link file (shortcut) (l)**: A file that points to another file or directory.
- **Block file (b)**: A special file used for block devices like hard disks and floppy disks.
- **Character file (c)**: A special file used for character devices like keyboards and mice.

## Symbolic Link (Soft Link) vs. Hard Link

Symbolic links (soft links) and hard links are two types of links used in the Linux file system.

### Soft Link

1. The size of the link file is equal to the number of characters in the name of the original file.
2. Can be created across different partitions.
3. Inode numbers of the source and link files are different.
4. If the original file is deleted, the link is broken, and data is lost.
5. Used for creating shortcuts.

Creating a soft link:
```bash
ln -s <source file> <destination>
```

### Hard Link

1. The size of both the source and link files is the same.
2. Can't be created across different partitions.
3. Inode numbers of both files are the same.
4. If the original file is deleted, the link will still contain the data.
5. Used for creating backup files.

Creating a hard link:
```bash
ln <source file> <destination>
```

This Markdown representation explains the types of files in a Linux file system and the differences between soft links and hard links, along with the commands to create them.
