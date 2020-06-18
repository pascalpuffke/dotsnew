#!/bin/sh

if [ $(cmus-remote -Q | awk '/status/ {print $2}') = "playing" ]
then
    echo '[>]' $(cmus-remote -Q | awk '/tag artist/ {$1=$2=""; a=$0} /tag title/  {$1=$2=""; t=$0}
END {print a " -"t}')
else
    echo '[||]' $(cmus-remote -Q | awk '/tag artist/ {$1=$2=""; a=$0} /tag title/  {$1=$2=""; t=$0}
END {print a " -"t}')
fi

