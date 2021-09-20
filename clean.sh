sudo apt-get autoclean || { echo "clean failed" ; exit 1; } >> error.txt
sudo apt-get autoremove || { echo "remove failed" ; exit 1; } >> error.txt
