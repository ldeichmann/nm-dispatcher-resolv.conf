# Maintainer: Jonni Westphalen <jonny.westphalen@googlemail.com>
pkgname=nm-dispatcher-resolv.conf-git
pkgver=r8.ec82274
pkgrel=1
pkgdesc="NetworkManager makes me cry"
arch=('any')
url="https://github.com/polygamma/nm-dispatcher-resolv.conf"
license=('unknown')
depends=('networkmanager-openvpn' 'openresolv' 'bash')
makedepends=('git')
source=('dispatcher::git+https://github.com/polygamma/nm-dispatcher-resolv.conf.git')
md5sums=('SKIP')

pkgver() {
    cd "${srcdir}/dispatcher"
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd "${srcdir}/dispatcher"
    install -D -m 755 -o root -g root 10_resolv.d "${pkgdir}/etc/NetworkManager/dispatcher.d/10_resolv.d"
}
