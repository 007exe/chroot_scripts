#!/bin/sh
for i in OPENBOX FLUXBOX KDE GNOME XORG XFCE ; do
	if [ "`file $i/bin/uname | grep ELF`" != "" ] ; then
		echo "$i: binary"
		mv $i/bin/uname $i/bin/uname.real
		cp uname $i/bin/
	fi
done

