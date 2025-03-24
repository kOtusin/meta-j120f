FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://01fbconfig.sh \
"

S = "${WORKDIR}"

do_install_append () {
    install -d ${D}${sysconfdir}/X11/Xsession.d
    install -m 755 ${S}/01fbconfig.sh ${D}${sysconfdir}/X11/Xsession.d/01fbconfig.sh
}

FILES_${PN} += " \
    ${sysconfdir}/X11/Xsession.d/01fbconfig.sh \
"
