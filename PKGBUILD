pkgname=nm-dispatcher-resolv.conf
pkgver=r7.898831c
pkgrel=1
pkgdesc="NetworkManager makes me cry"
arch=('any')
url="https://github.com/polygamma/nm-dispatcher-resolv.conf"
license=('various')
depends=('networkmanager-openvpn' 'openresolv' 'bash')
makedepends=('git')
source=("git+${url}.git")
sha256sums=('SKIP')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd "${srcdir}"
  install -D -m 755 -o root -g root ${pkgname}/10_resolv.d "${pkgdir}/etc/NetworkManager/dispatcher.d/10_resolv.d"
}
