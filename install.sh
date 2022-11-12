#!/bin/sh
INSTALLDIR=/opt/bin
TOOLS="pyload \
       pyrshell \
       pyterm"

ME=`realpath $0`
CURDIR=`dirname ${ME}`

echo "Installing from ${CURDIR} to ${INSTALLDIR}"
read -p "Continue [y/n]? " REPLY
case "${REPLY}" in
  N|n)
    exit 1;;
esac
if [ ! -d ${INSTALLDIR} ]
then
	mkdir -p ${INSTALLDIR}
fi
for t in ${TOOLS}
do
	echo "ln -s ${CURDIR}/$t ${INSTALLDIR}/$t"
	ln -s ${CURDIR}/$t ${INSTALLDIR}/$t
done
