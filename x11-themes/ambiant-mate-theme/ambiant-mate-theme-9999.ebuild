# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-2

DESCRIPTION="Ambiant theme from Ubuntu MATE"
HOMEPAGE="https://launchpad.net/ubuntu/+source/ubuntu-mate-artwork"
EGIT_REPO_URI="https://github.com/alexandervdm/ambiant-mate-theme.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="x11-themes/gtk-engines-murrine
         x11-themes/gtk-engines"

src_install() {
	insinto /usr/share/themes
	doins -r themes/Ambiant*
	
	insinto /usr/share/icons
	doins -r icons/Ambiant*
	
	insinto /usr/share/gtksourceview-2.0
	doins -r gtksourceview-2.0/*
}
