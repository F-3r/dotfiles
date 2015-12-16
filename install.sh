#!/bin/bash

#!/bin/bash

for FILE in *; do
    [[ "$FILE" = "install.sh"  ]] && continue
    [[ "$FILE" = "README.md"   ]] && continue
    [[ "$FILE" = "backup"      ]] && continue
    [[ "$FILE" = "config"      ]] && continue

    DEST="$PWD/$FILE"
    LINK="$HOME/.$FILE"
    [[ -e $LINK ]] && { 
	mv $LINK $PWD/backup/$FILE
	echo "Existing $FILE found. moved to $PWD/backup/$FILE"
    }

    ln -s $DEST "$HOME/.$FILE"
    echo "$DEST linked"
done
