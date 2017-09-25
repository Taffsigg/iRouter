#!/bin/bash

# forcing syn packets check
iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP

# force fragments packets check
iptables -A INPUT -f -j DROP

# xmas packets
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP

# dropping all null packets
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP


