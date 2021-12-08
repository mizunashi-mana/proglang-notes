#!/usr/bin/env bash

set -eu

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export TEXMFCNF="${TEXMFCNF:-".:"}"

DEV_TOOLS=(
  luatex
  luatexja
  latexmk
  latexpand
  latexdiff
)

USING_PACKAGES=(
  ipaex
  stix2-otf

  float
  nag
  onlyamsmath
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
  creveref
)

DEPENDENCY_PACKAGES=(
  l3packages
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
)

tlmgr install \
  "${DEV_TOOLS[@]}" \
  "${USING_PACKAGES[@]}" \
  "${DEPENDENCY_PACKAGES[@]}"
