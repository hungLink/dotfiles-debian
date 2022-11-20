function todo
    set SCR_DIR "$HOME/scripts/todo.d"
    set CUR_DIR $PWD
    updateTodo
    cd $SCR_DIR/$(date +'%Y/%m')
    vim $(date +'%d')
    cd $CUR_DIR
end
