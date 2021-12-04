#!/usr/bin/env bash

set -eu

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export TEXMFCNF="${TEXMFCNF:-".:"}"

DEV_TOOLS=(
  platex
  latexmk
  latexpand
  latexdiff
)

USING_PACKAGES=(
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
)

DEPENDENCY_PACKAGES=(
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
)

tlmgr install \
  "${DEV_TOOLS[@]}" \
  "${USING_PACKAGES[@]}" \
  "${DEPENDENCY_PACKAGES[@]}"
