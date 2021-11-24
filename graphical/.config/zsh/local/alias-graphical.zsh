export QT_GRAPHICSSYSTEM=gtk
alias xsane-samsung='xsane "smfp:net;printer.rohan"'
alias scrot-window="scrot '%Y-%m-%d-%R_$wx$h_scrot.png' -s -e 'mv $f ~/sync/mess/current'"
alias open="xdg-open"
alias preview-pipe="pandoc > /tmp/preview.html; open /tmp/preview.html"
preview() {
  cat $1 | preview-pipe
}
