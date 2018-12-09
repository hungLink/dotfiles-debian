bak(){
	for var in "$@"
	do
		cp "$var" "$var".bak
	done
}

burp (){
	java -jar -Xmx$1 /home/albertl/BurpSuitePro/burpsuite_pro.jar & disown > /dev/null 2> /dev/null
}

git-fast-push(){
	git commit -am "$1";
	git push;
}

go (){
	cd $1;
	nautilus ./ & disown > /dev/null 2> /dev/null
}

mk-cd(){
	mkdir $1;
	cd $1;
}

mk-mv(){
	all_Files=$(ls -1)
	mkdir $1;
	mv $all_Files $1
	mv .* current >/dev/null 2>&1
}

sed-replace-lines(){
	sed ':a;N;$!ba;s/\n/'"$1"'/g'
}

