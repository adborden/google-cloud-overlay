# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# https://github.com/MichaelOVertolli/gcloud-Overlay

EAPI=7

DESCRIPTION="Google Cloud SDK software development tools"
SLOT="0"
SRC_URI="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${PV}-linux-x86_64.tar.gz"

LICENSE="google-cloud-sdk"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}/google-cloud-sdk"

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
	fi
}

src_install() {
	dodir ${ROOT}/usr/share/google-cloud-sdk
	cp -R "${S}/" "${D}/usr/share/" || die "Install failed!"
	dosym ${D}/usr/share/google-cloud-sdk/bin/gcloud /usr/bin/gcloud
	doman ${D}/usr/share/google-cloud-sdk/help/man/man1/*.1
}

pkg_postrm() {
	if [ -h /usr/bin/gcloud ]; then
		rm /usr/bin/gcloud
	fi
}
