HOME_SED=$(echo $HOME | sed 's/\//\\\//g')

#Remove all ssh keys from ssh-agent
ssh-add -D -q
ssh-add -q $HOME/.ssh/id_rsa

#Add all the SSH keys to the agent
find $HOME/.ssh -type f |\
grep "config$" |\
xargs cat |\
grep IdentityFile |\
sed "s/.*~/$HOME_SED/g" |\
sort -u |\
xargs ssh-add -q

