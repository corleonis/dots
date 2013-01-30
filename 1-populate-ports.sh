#/bin/sh
ftp -a ftp.OpenBSD.org:pub/OpenBSD.org/5.2/ports.tar.gz
echo - Moving files to temp...
mv ./ports.tar.gz /tmp
echo - Extracting...
rm -rf /usr/ports
cd /usr; tar xzfv /tmp/ports.tar.gz
ls /usr/ports
echo - Done
