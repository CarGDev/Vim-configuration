sudo apt-get autoclean || { echo "clean failed" ; exit 1; } >> error.txt
echo autoclean >> date.txt
date >> date.txt
sudo apt-get autoremove || { echo "remove failed" ; exit 1; } >> error.txt
echo autoremove >> date.txt
date >> date.txt

