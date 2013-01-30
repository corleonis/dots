#/bin/ksh
echo - Installing software...
export PKG_PATH="ftp://ftp.openbsd.org/pub/OpenBSD/5.2/packages/i386"
pkg_add curl
pkg_add ruby-1.9.3.194
pkg_add python-2.7.3p0
pkg_add py-pip
ln -sf /usr/loacl/bin/ruby19 /usr/local/bin/ruby
ln -sf /usr/loacl/bin/erb19 /usr/local/bin/erb
ln -sf /usr/loacl/bin/irb19 /usr/local/bin/irb
ln -sf /usr/loacl/bin/rdoc19 /usr/local/bin/rdoc
ln -sf /usr/loacl/bin/ri19 /usr/local/bin/ri
ln -sf /usr/loacl/bin/rake19 /usr/local/bin/rake
ln -sf /usr/loacl/bin/gem19 /usr/local/bin/
ln -sf /usr/loacl/bin/testrb19 /usr/local/bin/testrb
ln -sf /usr/loacl/bin/python2.7 /usr/local/bin/python
ln -sf /usr/loacl/bin/python2.7-2to3 /usr/local/bin/2to3
ln -sf /usr/loacl/bin/python2.7-config /usr/local/bin/python-config
ln -sf /usr/loacl/bin/pydoc2.7 /usr/local/bin/pydoc
ln -sf /usr/loacl/bin/pip-2.7 /usr/local/bin/pip
