# Contributor: Sven Schober <sschober@sssm.de>
# TODO: finish (build function)
pkgname=fcgiwrap
pkgver=1.6.2
pkgrel=1
pkgdesc="FastCGI wrapper"
arch=(i686 x86_64)
url="http://nginx.localdomain.pl/wiki/FcgiWrap"
license=('GPL')
groups=()
depends=()
makedepends=(fcgi git)
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
#source=(http://www.lighttpd.net/download/$pkgname-$pkgver.tar.gz)
noextract=()
#md5sums=(e11fe80bf9e59ab4ab39797181eafab6)

_gitrepo="fcgi-wrap"
_gitroot="git://github.com/sschober/fcgiwrap.git"
build() {
  	cd ${srcdir}

	if [ -d ${_gitrepo} ]; then
		cd ${_gitrepo}
		make clean
    git pull origin
	else
		git clone ${_gitroot} ${_gitrepo}
		cd ${_gitrepo}
	fi

  make || return 1
  make DESTDIR="$pkgdir/" install
}

# vim:set ts=2 sw=2 et:
