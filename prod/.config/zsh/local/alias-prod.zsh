alias drafts='cd ~/sync/mess/current/drafts'
alias mess='cd ~/sync/mess/current'
alias self_org='cd ~/sync/permanent/self_org'
alias todo='todo.sh -A -t'
alias maybe='todo -d ~/.todo/config-maybe'
alias project='todo -d ~/.todo/config-project'
alias to_watch='todo -d ~/.todo/config-to_watch'
alias role='todo -d ~/.todo/config-role'
alias pending='todo -d ~/.todo/config-pending'
alias schulden='todo -d ~/.todo/config-schulden'
alias habit="~/repositories/habitctl/target/release/habitctl"
alias punch="python2 ~/repositories/punch/Punch.py"
alias task="~/.bin/task.sh"
alias mmdc='~/.node_modules/bin/mmdc -p ~/.config/node/puppeteer-config.json'
alias decktape_presentation='~/.node_modules/bin/decktape --no-sandbox remark http://localhost:8080 slides.pdf'
alias npm_home='npm -g --prefix ~/.node_modules' 
alias preview-pipe="pandoc -s -o /tmp/preview.html; open /tmp/preview.html"
alias preview-pipe-cli="pandoc -s -o /tmp/preview.html; lynx /tmp/preview.html"
preview() {                                                            
  cat $1 | preview-pipe                                                
}                                                                      
preview-cli() {
  cat $1 | preview-pipe-cli
}
