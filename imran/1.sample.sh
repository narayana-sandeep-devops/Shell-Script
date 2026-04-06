# https://visualpath.in/devopstutorials/devops
#!/bin/bash

### This script prints systeminfo ####
echo "Welcome to bash script"
echo

# Cheking system uptime
echo "#####################################"
echo "The uptime of the system is:"
uptime

# Memory Utilization
echo "######################################"
echo "Memory Utilization:"
free -m

#Disk utilization
echo "######################################"
echo "Disk Utilization"
df -h