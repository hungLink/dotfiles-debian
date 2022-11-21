# Debian Dotfiles
The point of this repo is to manage the dotfiles on each debian based machine easily.
Additionally there is a script (or set of scripts) that will automate any setup necessary to get a machine rolling in as few commands as possible.

## Installation 
```
cd ~/
git init
git remote add origin 
git pull origin master
~/.config/setup.py
```

## Adding new files to this repo.
Look at the example given at the very bottom of this documentation entry:
https://git-scm.com/docs/gitignore

We are doing this exact implementation.
Here's a rough example with some comments for each line explaining them:
```
/*
/.*		Ignore everything!
!/.config	Except for .config
/.config/*	Ignore everything in .config!
!/.config/foo	except for foo
```

This format ensures that only the exact directories desired are tracked.
