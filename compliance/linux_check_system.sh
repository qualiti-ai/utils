#!/bin/bash
# Set timestamp for begining of report.
echo "=====================  GRAB SYSTEM INFO  =================================" > report.txt
echo "Command Run: date" >> report.txt
date >> report.txt
echo "" >> report.txt
# Grab System Info. 
echo "Command Run: sudo dmidecode -t system | grep -A8 \"System Information\"" >> report.txt
sudo dmidecode -t system | grep -A8 "System Information" >> report.txt
echo "" >> report.txt
echo "" >> report.txt
echo "" >> report.txt
# Grabbing grab report for ClamAV
echo "=====================  CHECK CLAMAV  =================================" >> report.txt
bash linux_check_antivirus.sh >> report.txt
echo "" >> report.txt
echo "" >> report.txt
echo "" >> report.txt 
# Grabbing drive encryption evidence
echo "=====================  CHECK DRIVE ENCRYPTION  =================================" >> report.txt
bash linux_check_drive_encryption.sh >> report.txt
echo "=====================  CHECK USER PASSWORD  =================================" >> report.txt
bash linux_check_user_passwords.sh >> report.txt
