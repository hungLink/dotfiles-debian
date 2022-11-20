lsBigDirs(){
    du -sh * 2> /dev/null | awk '{print $2 " " $1}' | rev | grep ^G | rev | sort | awk '{print $2 "\t" $1}' | sort -V
}
