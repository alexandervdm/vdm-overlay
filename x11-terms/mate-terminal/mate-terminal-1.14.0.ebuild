# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

GCONF_DEBUG="no"

inherit gnome2 versionator

MATE_BRANCH="$(get_version_component_range 1-2)"

SRC_URI="http://pub.mate-desktop.org/releases/${MATE_BRANCH}/${P}.tar.xz"
DESCRIPTION="The MATE Terminal"
HOMEPAGE="http://mate-desktop.org"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="app-text/rarian:0
	dev-libs/atk:0
	>=dev-libs/glib-2.36:2
	>=mate-base/mate-desktop-1.12:0
	x11-libs/gdk-pixbuf:2
	>=x11-libs/gtk+-2.24.0:2
	x11-libs/libICE:0
	x11-libs/libSM:0
	x11-libs/libX11:0
	x11-libs/pango:0
	>=x11-libs/vte-0.28:0"

DEPEND="${RDEPEND}
	>=app-text/scrollkeeper-dtd-1:1.0
	app-text/yelp-tools:0
	>=dev-util/intltool-0.50.1:*
	sys-devel/gettext:*
	virtual/pkgconfig:*"

DOCS="AUTHORS ChangeLog HACKING NEWS README"
