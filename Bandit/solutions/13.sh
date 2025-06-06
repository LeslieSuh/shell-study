#!/bin/sh/
cat sshkey.private
ssh -i sshkey.private -p 2220 bandit14@localhost
cat /etc/bandit_pass/bandit14
# MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
exit
ssh bandit14@bandit.labs.overthewire.org -p 2220