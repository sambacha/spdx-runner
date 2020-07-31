# SPDX Assesment Script

> git grep for license identifiers 

## TL;DL

`grep --line-buffered -L SPDX-License-Identifier *.sol  | tee spdx-audit.txt`

## Overview
This specific script is for usage in `solidity` files but you can change it for any files.

> NOTE: Solidity Support comes in ^0.6.8

## Example 

// SPDX-License-Identifier: MIT

## Usage
-  searches for 'codeclimate.yml' - this is for disallowed licenses  
-  you can delete this or replace with something else
-  you can change the files to search for on line 22
-  you can change the dir's to search for on line 21
-  if you want to output to terminal without saving to file, remove -n and the * > output.txt

### Run
```bash
$ chmod +x spdx.sh
$ . ./spdx.sh
```
## License 
MIT License
