tmuxCheatSheet(){
    HELPSTRING="please chose one of the following:\nsession window pane copy misc help"
    #There are no args
    if [ $# -eq 0 ]; then
        echo $HELPSTRING
    fi
    TMUXCHEATSHEETDIR="/Users/alopez/.config/zsh/functions/tmuxCheatSheetd"
    case "$1" in
        "session") cat $TMUXCHEATSHEETDIR/session;;
        "window") cat $TMUXCHEATSHEETDIR/window;;
        "pane") cat $TMUXCHEATSHEETDIR/pane;;
        "copy") cat $TMUXCHEATSHEETDIR/copy;;
        "misc") cat $TMUXCHEATSHEETDIR/misc;;
        "help") cat $TMUXCHEATSHEETDIR/help;;
        "*") echo $HELPSTRING;;
    esac
}
