# OverTheWire: Bandit Challenge

This repository contains my solutions and notes for the **Bandit wargame** from [OverTheWire.org](https://overthewire.org/wargames/bandit/).

The Bandit challenge is designed for beginners who want to learn the basics of Linux commands, file manipulation, permissions, SSH, and more — all through practical, hands-on puzzles.

---

## ⚔️ About the Game

The goal of Bandit is to move from **Level 0** all the way up by solving a series of command-line based tasks. Each level provides clues and access details to progress to the next.

---

## 🛠️ What I’m Using

- Terminal / Shell (Zsh or Bash)
- VS Code for documentation
- SSH to connect to the Bandit server

---


## 🧠 How to Play

1. Visit [Bandit on OverTheWire](https://overthewire.org/wargames/bandit/)
2. Start at **Level 0**
3. Connect using:
   ```bash
   ssh bandit0@bandit.labs.overthewire.org -p 2220

## 🔐 Level 0 → Level 1

**Goal:**  
The password for the next level is stored in a file called `readme` located in the home directory.

**Approach:**  
Log in using the provided SSH credentials and use `cat` to read the file.

## 🔐 Level 1 → Level 2

**Goal:**  
The password for the next level is stored in a file called `-` located in the home directory.

**Approach:**  
Since `-` is usually interpreted as a command-line option, you need to prevent confusion by using  `./-` after the command to read it correctly.


## 🔐 Level 2 → Level 3

**Goal:**  
The password for the next level is stored in a file called `spaces in this filename` located in the home directory.

**Approach:**  
Since the filename contains spaces, wrap it in quotes or escape each space using backslashes.

## 🔐 Level 3 → Level 4

**Goal:**  
The password for the next level is stored in a hidden file in the `inhere` directory.

**Approach:**  
Hidden files in Linux start with a dot (`.`). Use `ls -a` to view all files, including hidden ones, in the `inhere` directory. Then use `cat` to read the hidden file.

## 🔐 Level 4 → Level 5

**Goal:**  
The password for the next level is stored in the only human-readable file in the `inhere` directory.

**Approach:**  
Use the `file` command on each file inside the `inhere` directory to determine its type. Look for the one that says `ASCII text` (which is human-readable), then use `cat` to read its contents.

## 🔐 Level 5 → Level 6

**Goal:**  
The password for the next level is stored in a file somewhere under the `inhere` directory and has the following properties:  
- Human-readable  
- 1033 bytes in size  
- Not executable

**Approach:**  
Use the `find` command to search files by size, permissions, and type.

## 🔐 Level 6 → Level 7

**Goal:**  
The password for the next level is stored somewhere on the server and has the following properties:  
- Owned by user `bandit7`  
- Owned by group `bandit6`  
- Exactly 33 bytes in size

**Approach:**  
Use the `find` command to search from the root `/` directory for files matching all the criteria.  
Suppress permission errors with `2>/dev/null`.

## 🔐 Level 7 → Level 8

**Goal:**  
The password for the next level is stored in the file `data.txt`, next to the word `millionth`.

**Approach:**  
Use `grep` to search for the line containing the word `millionth`. The password is the second word on that line.

## 🔐 Level 8 → Level 9

**Goal:**  
The password for the next level is stored in the file `data.txt` and is the only line that occurs **only once**.

**Approach:**  
Use `sort` to organize the file, then use `uniq -u` to find the unique line that appears only once.

## 🔐 Level 9 → Level 10

**Goal:**  
The password for the next level is stored in the file `data.txt`, in one of the few **human-readable strings**, **preceded by several `=` characters**.

**Approach:**  
Use the `strings` command to extract all readable text from the file, then pipe it into `grep` to filter lines that contain a sequence of equal signs.


