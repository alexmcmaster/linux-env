# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes matlab home directory if it exists
if [ -d "$HOME/matlab" ] ; then
    PATH="$HOME/matlab:$PATH"
fi

# set up PYTHONPATH
PYTHONPATH="/usr/local/lib/python3.5/dist-packages/"
export PYTHONPATH

# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# define NOTEFILE file used by note, notes, and nedit in ~/bin
export NOTEFILE="/home/amcmaster/.notes"
if ! [ -e $NOTEFILE ]; then
    touch $NOTEFILE
fi

# define WORKSPACE directory used by wsp in ~/bin
export WORKSPACE=~/Workspace

export BACKUP_DIR=/home/amcmaster/.backups
if ! [ -e $BACKUP_DIR ]; then
    mkdir $BACKUP_DIR
fi

export PATH="$HOME/.cargo/bin:$PATH"
