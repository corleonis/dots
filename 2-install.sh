#/bin/sh
echo - Installing software...
export PKG_PATH="ftp://ftp.openbsd.org/pub/OpenBSD/5.2/packages/i386"
pkg_add -m curl
pkg_add -m git
pkg_add -m python-2.7.3p0
pkg_add -m py-pip
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
echo ln -sf /usr/local/bin/ruby19 /usr/local/bin/ruby
echo ln -sf /usr/local/bin/erb19 /usr/local/bin/erb
echo ln -sf /usr/local/bin/irb19 /usr/local/bin/irb
echo ln -sf /usr/local/bin/rdoc19 /usr/local/bin/rdoc
echo ln -sf /usr/local/bin/ri19 /usr/local/bin/ri
echo ln -sf /usr/local/bin/rake19 /usr/local/bin/rake
echo ln -sf /usr/local/bin/gem19 /usr/local/bin/
echo ln -sf /usr/local/bin/testrb19 /usr/local/bin/testrb
echo ln -sf /usr/local/bin/python2.7 /usr/local/bin/python
echo ln -sf /usr/local/bin/python2.7-2to3 /usr/local/bin/2to3
echo ln -sf /usr/local/bin/python2.7-config /usr/local/bin/python-config
echo ln -sf /usr/local/bin/pydoc2.7 /usr/local/bin/pydoc
echo ln -sf /usr/local/bin/pip-2.7 /usr/local/bin/pip
/usr/bin/clear
echo - Cloning into server repo
cd /root; git clone http://github.com/tylermolamphy/molamphy.net.git
echo - Requesting public branch
cd /root/molamphy.net/; git checkout gh-pages
echo - Server is going down for momentary maintainence... 
apachectl stop
echo - Copying site to host dir
rm -rf /var/www/htdocs/*
cp -r /root/molamphy.net/* /var/www/htdocs
/usr/bin/clear
echo - Starting server...
apachectl start 
echo - Serving the following files:
ls -las /var/www/htdocs
exit