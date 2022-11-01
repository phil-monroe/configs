name_tab() {
  echo -ne "\e]1;$1\a"
}

rtop(){
  ssh $1 -t 'sudo htop'
}

rsniff(){
	echo "wireshark -k -i <(ssh  $1 'sudo tcpdump -i eth0  -w - $2')"
}

csv() {
  sed 's/,,/, ,/g;s/,,/, ,/g' $1 | column -s, -t | less -#2 -N -S
}

schema() {
  psql $1 -c "\d $2"
}

flush_cache() { sudo killall -HUP mDNSResponder }

# Remember my directory on new tab!
dir_mem_precmd () {print -Pn "\e]2; %~/ \a"}
dir_mem_preexec () {print -Pn "\e]2; %~/ \a"}

print_path() { tr ':' '\n' <<< "$PATH" }

allow_binstubs_for_project() { mkdir -p .git/safe }

use_homebrew_java() {
  export JAVA_HOME="$(/opt/homebrew/bin/brew --prefix $1)/libexec/openjdk.jdk/Contents/Home"
}
