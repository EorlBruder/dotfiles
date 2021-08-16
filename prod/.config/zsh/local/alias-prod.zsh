alias drafts='cd ~/sync/mess/current/drafts'
alias mess='cd ~/sync/mess/current'
alias self_org='cd ~/sync/permanent/self_org'
alias preview-pipe="pandoc -s -o /tmp/preview.html; open /tmp/preview.html"
alias preview-pipe-cli="pandoc -s -o /tmp/preview.html; lynx /tmp/preview.html"
preview() {                                                            
  cat $1 | preview-pipe                                                
}                                                                      
preview-cli() {
  cat $1 | preview-pipe-cli
}
