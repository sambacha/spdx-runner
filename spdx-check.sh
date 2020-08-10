#!/bin/sh
# SPDX-License-Identifier: MIT
# searches for 'codeclimate.yml' - this is for disallowed licenses  
# you can delete this or replace with something else
# you can change the files to search for on line 22
# you can change the dir's to search for on line 21
# if you want to output to terminal without saving to file, remove -n and the * > output.txt
# github.com/sambacha/spdx
echo "Saving files without an SPDX to no-spdx.txt "
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

git grep -Ln SPDX-License-Identifier * > no-spdx.txt \
    ':^.git*' ':^.ci/*' ':^.codeclimate.yml' \
    ':^README' ':^MAINTAINERS' ':^VERSION' \
    ':^*/packages' ':^*/README' \
    ':^license/' ':^contracts/' ':^src' ':^migrations/' \
    ':^*.sol' ':^*.d.ts' ':^*.js' ':^*.data' ':^*.cfg' ':^*.txt'

echo
echo "Files with redundant boilerplate"
echo "________________________________ "

git grep -l SPDX-License-Identifier | \
    xargs grep -l 'Redistribution'
