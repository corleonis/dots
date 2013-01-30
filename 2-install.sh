#/bin/sh
echo - Installing software...
export PKG_PATH="ftp://ftp.openbsd.org/pub/OpenBSD/5.2/packages/i386"
pkg_add curl
pkg_add git
pkg_add python-2.7.3p0
pkg_add py-pip
echo - Done, soft-linking common utils to /usr/local/bin/...
ln -sf /usr/local/bin/ruby19 /usr/local/bin/ruby
ln -sf /usr/local/bin/erb19 /usr/local/bin/erb
ln -sf /usr/local/bin/irb19 /usr/local/bin/irb
ln -sf /usr/local/bin/rdoc19 /usr/local/bin/rdoc
ln -sf /usr/local/bin/ri19 /usr/local/bin/ri
ln -sf /usr/local/bin/rake19 /usr/local/bin/rake
ln -sf /usr/local/bin/gem19 /usr/local/bin/
ln -sf /usr/local/bin/testrb19 /usr/local/bin/testrb
ln -sf /usr/local/bin/python2.7 /usr/local/bin/python
ln -sf /usr/local/bin/python2.7-2to3 /usr/local/bin/2to3
ln -sf /usr/local/bin/python2.7-config /usr/local/bin/python-config
ln -sf /usr/local/bin/pydoc2.7 /usr/local/bin/pydoc
ln -sf /usr/local/bin/pip-2.7 /usr/local/bin/pip
echo - Cloning into server repo
git clone http://github.com/tylermolamphy/yourworldoftext.git
echo - Installing dependances... 
pip-2.7 install -r yourworldoftext/requirements.txt
clear
echo - Syncing database...
python2.7 yourworldoftext/manage.py syncdb
echo - Starting server...
python2.7 yourworldoftext/manage.py runserver