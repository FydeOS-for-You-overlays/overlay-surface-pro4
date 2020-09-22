# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit appid2
DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
      doappid "{C8975970-2856-498A-8938-3570D7756CAF}" "CHROMEBOOK" "{608B7909-4449-4232-A0F1-96EB543FFA08}"
}
