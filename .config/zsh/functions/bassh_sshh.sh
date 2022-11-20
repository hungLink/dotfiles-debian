sshh(){
    if [ $# -eq 0 ]; then
        echo "Use this function to connect to an SSH server in your config."
        echo "Uses tab completion"
        echo "USAGE: bassh (project-name) (server-name)"
        return
    fi
    if [ $# -eq 1 ]; then
        echo "No server provided. Use tab compoletion to select a server."
        return
    fi
    ssh -F $HOME/.ssh/configs/$1/config $2
}
bassh(){
    if [ $# -eq 0 ]; then
        echo "Use this function to run a bash script on a remote server."
        echo "USAGE: bassh (project-name) (server-name) (script)"
        return
    fi
    if [ $# -eq 1 ]; then
        echo "No script provided. Use tab completion to select a server, and script."
        return
    fi
    if [ $# -eq 2 ]; then
        echo "No script provided. Use tab completion to select a script."
        return
    fi
    ssh -F $HOME/.ssh/configs/$1/config $2 'bash -s' < $3 "${@:4}"

}
