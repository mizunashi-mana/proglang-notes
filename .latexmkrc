#!/usr/bin/env perl

use v5.10;
use experimental qw(smartmatch);

# tex options
$lualatex     = 'lualatex -shell-escape -synctex=1 -interaction=nonstopmode';
$pdflualatex  = $lualatex;
$biber        = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex       = 'upbibtex %O %B';
$makeindex    = 'upmendex %O -o %D %S';
$max_repeat   = 3;
$pdf_mode     = 4;

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
