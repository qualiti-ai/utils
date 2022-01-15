#!/bin/bash
# Set timestamp for begining of report.
echo "Command Run: date"
date
echo ""
# Check definition updates. 
echo "Command Run: clamscan --version"
clamscan --version
echo ""
echo ""
echo ""
# Grabbing quick evidence that clam is currently running. Remove grep from output
echo "Command Run: ps aux | grep clam | grep -v grep"
ps aux | grep clam | grep -v grep
echo ""
echo ""
echo ""
