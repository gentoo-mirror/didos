# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(py{py3,thon{2_7,3_{5..7}}})

inherit distutils-r1

EGIT_REPO_URI="https://github.com/dol-sen/pyGPG.git"

DESCRIPTION="A python interface wrapper for gnupg's gpg command"
HOMEPAGE="https://github.com/dol-sen/pyGPG"
SRC_URI="https://dev.gentoo.org/~dolsen/releases/pyGPG/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
IUSE=""

KEYWORDS="~alpha ~amd64 ~arm ~arm64 hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 sparc ~x86"

DEPEND=""
RDEPEND="${DEPEND}
	app-crypt/gnupg
	"

pkg_postinst() {
	einfo
	einfo "This is experimental software."
	einfo "The API's it installs should be considered unstable"
	einfo "and are subject to change."
	einfo
	einfo "Please file any enhancement requests, or bugs"
	einfo "at https://github.com/dol-sen/pyGPG/issues"
	einfo "I am also on IRC @ #gentoo-keys of the freenode network"
	einfo
	ewarn "There may be some python 3 compatibility issues still."
	ewarn "Please help debug/fix/report them in github or bugzilla."
}
