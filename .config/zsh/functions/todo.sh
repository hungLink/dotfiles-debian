todo(){
    SCR_DIR="$HOME/scripts/todo.d"
    CUR_DIR=$PWD
    updateTodo
    cd $SCR_DIR/$(date +'%Y/%m')
    vim $(date +'%d')
    cd $CUR_DIR
}
