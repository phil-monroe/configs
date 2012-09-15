# echo 'zshrc loaded'

autoload -U compinit
compinit

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk.pem`
export EC2_CERT=`ls $EC2_HOME/cert.pem`
# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
#			 Local    : Ruby!          : EC2         : nginx               : MacPorts     : MacPorts      : system       : system : sys: repeat
export PATH="$HOME/bin:$HOME/.rbenv/bin:$EC2_HOME/bin:/usr/local/nginx/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:$PATH"


# RBENV
eval "$(rbenv init -)"