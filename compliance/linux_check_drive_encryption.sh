#!/bin/bash
# Running lsblk and removing loop devices since they are not being checked.
echo "Command Run: lsblk | grep -v loop"
lsblk | grep -v loop
echo ""
echo ""
echo ""
# Offereing secondary bit of evidence in case the first is not allowed.
echo "Command Run: sudo dmsetup status"
sudo dmsetup status
echo ""
echo ""
echo ""
