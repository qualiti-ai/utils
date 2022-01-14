echo "Checking for correct system type"
grep Ubuntu /etc/issue && echo "Ubuntu: Correct" || exit 1
echo ""
echo ""
echo ""
echo "Install ClamAV"
sudo apt install -y clamav clamav-daemon
echo ""
echo ""
echo ""
echo "Stop ClamAV"
sudo systemctl stop clamav-freshclam
echo ""
echo ""
echo ""
echo "Update ClamAV"
sudo freshclam
echo ""
echo ""
echo ""
echo "Enable ClamAV after update"
sudo systemctl start clamav-freshclam
sudo systemctl enable clamav-freshclam
