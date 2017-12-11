#!/bin/bash

set -u

cd `dirname $0`/

# source ~/.bash_profile

if [ -z "${1:-}" ]; then
    echo "Usage: chocopy <COMMAND>" >&2
    exit 1
fi

_resultOfCommand=`$*`

select _selected in ${_resultOfCommand}
do
 echo $_selected"を選択"
 break
done

echo $_selected | pbcopy

echo chocopy to "$_selected"

exit 0
