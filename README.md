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

