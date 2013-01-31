#/bin/sh
echo - Installing software...
export PKG_PATH="ftp://ftp.openbsd.org/pub/OpenBSD/5.2/packages/i386"
pkg_add -m curl
pkg_add -m rsync-3.0.9
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
echo - Cloning into server repo
git clone http://github.com/tylermolamphy/molamphy.net
echo - Requesting public branch
cd molamphy.net/; git checkout gh-pages
echo - Server is going down for momentary maintainence... 
apachectl stop
echo - Copying site to host dir
rm -rf /var/www/htdocs/*
rsync -avz ./molamphy.net/ /var/www/htdocs/
echo - Starting server...
apachectl start 