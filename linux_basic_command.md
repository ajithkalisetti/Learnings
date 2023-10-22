These below are the basic commands in Linux :

1. **cat** (Concatenate) command is used to create a file and to display and modify the contents of a file.

Example:
```
cat > filename # It will create a file and let's us to create data init.

cat filename # Displays contents in the filename.

cat >> filename # Append data to the exsisting data in a file.

```

2. **touch** command is used to create one or more files at a time.

Example:
```
touch filename # Creats a file

touch file1.txt file2.txt # Creates multiple files 

touch file{1..10}.txt # Creates 10 files (file1.txt file2.txt .....file10.txt)

```

3. **mkdir** command is used to create a directory

Example:
```
mkdir dirname  #Creates a directory 

mkdir -p Dir/{dir1,dir2,dir3}  # Creates multiple directories (Here In Dir, we created dir1, dir2, dir3)

```
4. **cp** command is used to copy files (copy and paste)

Example:
```
cp <source filename> <destination directory in which to paste the file>

cp –rvfp <dir name> <destination name>  # copy directories from one location to another

```
5. **mv** command is used move files or directories to another location. (cut and paste)

Example:
```
mv <filename> <Destination directory>

mv <dir name> <destination dir name>

mv <old name> <new name>  # Renaming a file

```
6. **rm** command is used to remove files or directories.

Example:
```
rm filename

rmdir dirname  # Removes empty directory

rm -rf  dirname # Removes forcefully, recurssively (directory containing data)

```
7. **ls** command is used to list the files and directories in a directory

Example:
```
ls 

ls -a  # To view all files including hidden

ls -al # To show all files in long listed

```
8. **pwd** command is used to know current working directory or present working directory.

Example:
```
pwd

```
9. **cd** command is used to change directories

Example:
```
cd /opt/

```
10. **man** command is used to know the inforamation of any command 

Example:
```
man mkdir
```
11. **history** command is used to get previously executed commands

Example:
```
history
```


