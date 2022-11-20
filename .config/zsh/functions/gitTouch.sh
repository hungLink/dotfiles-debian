gitTouch(){
    HELPSTRING="Please provide a file name"
    #There are no args
    if [ $# -eq 0 ]; then
        echo $HELPSTRING
    fi
    touch "$@"
    git add "$@"
    git commit -m "bang" "$@"
}
