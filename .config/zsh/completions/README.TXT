You can specify a function to use as a completion function for a string.
For example, here is a simple function that cats one file given as an arg.
foo (){cat $1}

If you want to have it tab complete for files in your PWD, then you can make a function like so:
_complete_foo(){ls -p | grep -v /}
This function just lists the files in the PWD. You can now call it like any other function.

To make it a completer for foo(), put the following somewhere in your zsh source files:
complete -F _complete_foo foo




Here are a list of things I've found along the way:
# You can simply use some words as your completion output like so
compgen -W "foo bar baz"

# Command outputs will generally create completions instead of printing to stdout.
You can simply list a dir if you want to use all the files in that dir as a completion.

# This is generally more flexible than compgen because you can chain stuff together and get output from multiple commands like so:
ls
echo foo
echo bar

# If you feel like being really clean about it, you could have a var that collects strings and feed it to compgen. I usually just use stdout and comment stuff.

# This is a numeric value that represents what arg the user is trying to complete:
$COMP_CWORD

If you want to complete only for the first arg do this:
if [ $COMP_CWORD -eq 1 ];
then
	compgen -W "foo bar baz"
fi

# There is an array of vars that is equal to the args that are currently typed into the command:
$COMP_WORDS

# You can get access to the current completion word like so:
${COMP_WORDS[COMP_CWORD]}

# But something I find more often useful is to get the previous one like so:
${COMP_WORDS[COMP_CWORD-1]}
