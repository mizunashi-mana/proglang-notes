#!/usr/bin/env perl

use v5.10;
use experimental qw(smartmatch);

# envs
$ENV{'TEXINPUTS'}     = './sty//:./font//:' . ($ENV{'TEXINPUTS'} // '');
$ENV{'TEXMFCNF'}      = '.:'                . ($ENV{'TEXMFCNF'}    // '');
$ENV{'TEXFONTMAPS'}   = './font//:' . ($ENV{'TEXFONTMAPS'} // '');
$ENV{'BSTINPUTS'}     = './sty//:'  . `kpsewhich -show-path=bst`;
$ENV{'MFINPUTS'}      = './font//:' . `kpsewhich -show-path=mf`;
$ENV{'TTFONTS'}       = './font//:' . `kpsewhich -show-path='truetype fonts'`;
$ENV{'OPENTYPEFONTS'} = './font//:' . `kpsewhich -show-path='opentype fonts'`;
$ENV{'VFFONTS'}       = './font//:' . `kpsewhich -show-path=vf`;
$ENV{'T1FONTS'}       = './font//:' . `kpsewhich -show-path='type1 fonts'`;
$ENV{'PKFONTS'}       = './font//:' . `kpsewhich -show-path=pk`;
$ENV{'AFMFONTS'}      = './font//:' . `kpsewhich -show-path=afm`;

# tex options
$latex        = 'uplatex -synctex=1 -shell-escape -halt-on-error -kanji=utf8';
$latex_silent = $latex . ' -interaction=batchmode';
$biber        = 'upbiber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex       = 'upbibtex %O %B';
$dvipdf       = 'dvipdfmx -d 5 -f font.map %O -o %D %S';
$makeindex    = 'upmendex %O -o %D %S';
$max_repeat   = 5;
$pdf_modei    = 3;

$pvc_view_file_via_temporary = 0;

# default preview
given ($^O) {
  when (/MSWin32/) {
    $pdf_previewer = 'start';
  }
  when (/darwin/) {
    $pdf_previewer = 'open';
  }
  default {
    $pdf_previewer = 'evince';
  }
}

# local config
$local_latexmkrc_path = './.latexmkrc.local';
require $local_latexmkrc_path if -e $local_latexmkrc_path;
