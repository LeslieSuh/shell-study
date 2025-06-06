#!/bin/sh/
cat /etc/bandit_pass/bandit15
# 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
cat /etc/bandit_pass/bandit15 | openssl s_client -connect localhost:30001 -ign_eof
# kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
exit
ssh bandit16@bandit.labs.overthewire.org -p 2220