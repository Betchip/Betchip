
Debian
====================
This directory contains files used to package betchipd/betchip-qt
for Debian-based Linux systems. If you compile betchipd/betchip-qt yourself, there are some useful files here.

## betchip: URI support ##


betchip-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install betchip-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your betchip-qt binary to `/usr/bin`
and the `../../share/pixmaps/betchip128.png` to `/usr/share/pixmaps`

betchip-qt.protocol (KDE)

