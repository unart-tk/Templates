# configure.ac

AC_INIT([Sampala],[0.2])
AC_CONFIG_SRCDIR([src/sampala.vala])
AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE([no-dist-gzip dist-bzip2])

# Enable silent rules is available
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AM_MAINTAINER_MODE

AC_PROG_CC
AC_PROG_CC_STDC
AM_PROG_VALAC([0.7.0])
AC_PROG_INSTALL
IT_PROG_INTLTOOL([0.35])

pkg_modules="gtk+-2.0 >= 2.14.0"
SAMPALA_PACKAGES="--pkg gtk+-2.0"
PKG_CHECK_MODULES(SAMPALA, [$pkg_modules])
AC_SUBST(SAMPALA_CFLAGS)
AC_SUBST(SAMPALA_LIBS)
AC_SUBST(SAMPALA_PACKAGES)

GETTEXT_PACKAGE=sampala
AC_DEFINE_UNQUOTED([GETTEXT_PACKAGE], ["$GETTEXT_PACKAGE"], [Gettext Package])
AC_SUBST(GETTEXT_PACKAGE)
AM_GNU_GETTEXT_VERSION([1.11])
AM_GLIB_GNU_GETTEXT

AC_CONFIG_FILES([
	Makefile
	data/sampala.desktop.in
	data/Makefile
	data/icons/Makefile
	data/icons/16x16/Makefile
	data/icons/22x22/Makefile
	data/icons/24x24/Makefile
	data/icons/32x32/Makefile
	data/icons/48x48/Makefile
	data/icons/scalable/Makefile
	data/images/Makefile
	po/Makefile.in
	src/Makefile
	vapi/Makefile
])
AC_OUTPUT
