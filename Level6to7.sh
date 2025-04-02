# Connect to the Bandit Level 4 server
ssh bandit6@bandit.labs.overthewire.org -p 2220

# Command used after logging in
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
