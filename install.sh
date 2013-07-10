#!/bin/bash

DOTFILES_DIR=$(pwd)
BACKUP_DIR="$DOTFILES_DIR/backup"
FILES=""

function execute()
{
    echo -n $2
    $1
    [[ $? -eq 0 ]] && echo -e "           [OK]\n"
    [[ $? -ne 0 ]] && echo -e "         [FAIL!]\n"
}

for NAME in *
do
    if [ "$NAME" != 'install.sh' ] && [ "$NAME" != 'README.md' ] && [ "$NAME" != 'backup' ] ; 
    then
        FILES="$FILES $NAME"
    fi
done

cd $HOME

for NAME in $FILES
do
    DOTFILE=".$NAME"

    if [[ -f $DOTFILE || -d $DOTFILE ]]
    then
        execute "mv $DOTFILE $BACKUP_DIR" "backing up $DOTFILE in $BACKUP_DIR..."
    fi

    execute "ln -s $DOTFILES_DIR/$NAME $DOTFILE"  "linking new $DOTFILE to $DOTFILE_DIR/$NAME..."
done

cd $DOTFILES_DIR
