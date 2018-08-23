#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BETCHIPD=${BETCHIPD:-$SRCDIR/betchipd}
BETCHIPCLI=${BETCHIPCLI:-$SRCDIR/betchip-cli}
BETCHIPTX=${BETCHIPTX:-$SRCDIR/betchip-tx}
BETCHIPQT=${BETCHIPQT:-$SRCDIR/qt/betchip-qt}

[ ! -x $BETCHIPD ] && echo "$BETCHIPD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BTPVER=($($BETCHIPCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for betchipd if --version-string is not set,
# but has different outcomes for betchip-qt and betchip-cli.
echo "[COPYRIGHT]" > footer.h2m
$BETCHIPD --version | sed -n '1!p' >> footer.h2m

for cmd in $BETCHIPD $BETCHIPCLI $BETCHIPTX $BETCHIPQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTPVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTPVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
