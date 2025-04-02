# Connect to the Bandit Level 4 server
ssh bandit5@bandit.labs.overthewire.org -p 2220

# Command used after logging in
find inhere/ -type f -size 1033c ! -executable -exec cat {} \;