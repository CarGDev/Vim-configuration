sudo apt-get update || { echo "update failed" ; exit 1; } >> error.txt
echo update >> date.txt
date >> date.txt
sudo apt-get upgrade -y || { echo "upgrade failed" ; exit 1; } >> error.txt
echo upgrade >> date.txt
date >> date.txt
sudo apt-get dist-upgrade -y || { echo "dist upgrade failed" ; exit 1; } >> error.txt
echo dist upgrade >> date.txt
date >> date.txt
