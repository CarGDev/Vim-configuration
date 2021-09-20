sudo apt-get update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt-get upgrade -y || { echo "upgrade failed" ; exit 1; } >> error.txt
sudo apt-get dist-upgrade -y || { echo "dist upgrade failed" ; exit 1; } >> error.txt

date >> date.txt
