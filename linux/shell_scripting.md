# Shell scripting 

```bash
#!/bin/bash
echo "This is a script!"
```

* to execute:
  * `chmod 755 script.sh`
  * `./script.sh`


```bash
#!/bin/bash
sleep 60
```

* to execute:
    * `./script.sh &`
    * use PID for ... `ps -fp`
    * or `pstree -p <PID>`


### variables

```bash
#!/bin/bash
MY_VAR="Yahoo"
echo "I like ${MY_VAR} shell."
```
### tests

#### file operators

* `d FILE` = if file is a directory
* `e FILE` = if file exists.
* `f FILE` = if file exists and is a regular file.
* `r FILE` = if file is readable by you.
* `s FILE` = if file exists and is not empty.
* `w FILE` = if the file is writable.
* `x FILE` = if the file is executable.

#### string operators

* `-z STRING` = if string is empty.
* `-n STRING` = if string is not empty.
* `STRING1 = STRING2` = the strings are equal.
* `STRING1 != STRING2` = the strings are not equal.


#### arithmetic operators

* `arg1 –eq arg2` = arg1 is equal to arg2.
* `arg1 –ne arg2` = arg1 is not equal to arg2.
* `arg1 –lt arg2` = arg1 is less than arg2.
* `arg1 –le arg2` = arg1 is less than or equal to arg2.
* `arg1 –gt arg2` = arg1 is greater than arg2.
* `arg1 –ge arg2` = arg1 is greater than or equal to arg2

### if statement

```bash
if [ condition-is-true ]
then
command 1
command 2
command N
fi

```

### if/else statement
```bash
if [ condition-is-true ]
then
command N
else
command M
fi
```

### if/elif/else statement
```bash
if [ condition-is-true ]
then
command N
elif [ condition-is-true ]
then
command N
else
command N
fi
```

### for loop
```bash
for VARIABLE_NAME in ITEM_1 ITEM_N
do
command 1
command 2
command N
done
```

```bash
#!/bin/bash
PICTURES=$(ls *jpg)
DATE=$(date + %F)
for PICTURE in $PICTURES
do
echo "Renaming ${PICTURE} to ${DATE}-${PICTURE}"
mv ${PICTURE} ${DATE}-${PICTURE}
done
```

### positional parameters
* `script.sh parameter1 parameter2 parameter3`

```bash
$0 : "script.sh"
$1 : "parameter1"
$2 : "parameter2"
$3 : "parameter3"
$@ : 1 - 3
```
### user input 
* `read -p "PROMPT" VARIABLE`