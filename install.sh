#!/bin/sh
INSTALLDIR=/opt/bin
TOOLS="pyload \
	  	pyrshell \
	  	pyterm"

ME=`realpath $0`
CURDIR=`dirname ${ME}`

echo "Installing from ${CURDIR} to ${INSTALLDIR}"
read -p "Continue [y/n]? " -r
if [[ ! ${REPLY} =~ ^[Yy]$ ]]
then
	exit 1
fi
if [[ ! -d ${INSTALLDIR} ]]
then
	mkdir -p ${INSTALLDIR}
fi
for t in ${TOOLS}
do
	echo "ln -s ${CURDIR}/$t ${INSTALLDIR}/$t"
	ln -s ${CURDIR}/$t ${INSTALLDIR}/$t
done