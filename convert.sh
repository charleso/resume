#!/bin/sh
cp -r *.html images $DEST
rst2pdf -s style.txt Resume.rst && cp Resume.pdf $DEST
rst2html --stylesheet=style.css Resume.rst > $DEST/Resume.html
rst2odt Resume.rst $DEST/Resume.odt
unoconv -f doc $DEST/Resume.odt