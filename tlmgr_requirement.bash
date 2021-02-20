#!/usr/bin/env bash

set -eu

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export TEXMFCNF="${TEXMFCNF:-".:"}"

DEV_TOOLS="$(cat <<EOS
platex
latexmk
latexpand
latexdiff
EOS
)"

USING_PACKAGES="$(cat <<EOS
ipaex

type1cm
lipsum

pdftexcmds

nag
onlyamsmath
stmaryrd
algorithms
algorithmicx
minted
listings
adjustbox
xifthen
pgf
pxpgfmark
tikz-cd
xcolor
mathtools
changepage
mhchem
xypic
EOS
)"

DEPENDENCY_PACKAGES="$(cat <<EOS
l3packages
float
fvextra
etoolbox
xstring
lineno
framed
fancyvrb
upquote
xkeyval
collectbox
ifmtarg
EOS
)"

tlmgr install \
  $DEV_TOOLS \
  $USING_PACKAGES \
  $DEPENDENCY_PACKAGES
