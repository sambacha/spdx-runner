# SPDX License Check

> SPDX Version 2.2

## Overview

-   bash script, `spdx.sh`
-   license header, `license_header`
-   test files, `*.js, *.java, etc`

## Formats

```
C source: // SPDX-License-Identifier: <SPDX License Expression>
C header: /* SPDX-License-Identifier: <SPDX License Expression> */
ASM:      /* SPDX-License-Identifier: <SPDX License Expression> */
scripts:  # SPDX-License-Identifier: <SPDX License Expression>
.rst:     .. SPDX-License-Identifier: <SPDX License Expression>
.dts{i}:  // SPDX-License-Identifier: <SPDX License Expression>
```

## Usage

1. In the `spdx.sh` file you will find `egrep` which specifices which files to read.

2. Make necessary adjustments based upon your requirements to `spdx.sh`

3. Save your 'SPDX License Header' to the file `license_header`

#### SPDX Header

This script will create the `license_header` file for the `Licensor` if you pass the argument, "ORG=YOUR_NAME/COMPANY_NAME"
`$ . spdx-header.sh`

#### SPDX Check

This script will bulk check the directory for SPDX compliant headers, then append the results into `files.txt`. This invetories your software licenses, useful for supply chain integrity

`$ . spdx-check.sh`

### SPDX

This script will search through the file extenstions you specify, and it will append the `licensse_header` that was specificed in the files that are missing a SPDX-2.2 compliant header

`$ . spdx.sh`

> Note: Try and keep files to search for consistent with their respective commenting nomenclature

> git grep for license identifiers

## SPDX Solidity Audit

`grep --line-buffered -L SPDX-License-Identifier *.sol | tee spdx-audit.txt`

### Solidity Overview

This specific script is for usage in `solidity` files but you can change it for any files.

> NOTE: Solidity Support comes in ^0.6.8

### Example

`// SPDX-License-Identifier: ISC`

## `spdx-sol.sh`

-   searches for 'codeclimate.yml' - this is for disallowed licenses

-   can delete this or replace with something else

-   you can change the files to search for on line 22
-   you can change the dir's to search for on line 21
-   if you want to output to terminal without saving to file, remove -n and the \* > output.txt

### License Header Examples

#### MDX/JSX

```
/_SPDX-License-Identifier: Apache-2.0
SPDXVersion: SPDX-2.2
SPDX-FileCopyrightText: Copyright 2020 <Licensor>_/
```

#### REGULAR

```
// SPDX-License-Identifier: Apache-2.0
// SPDXVersion: SPDX-2.2
// SPDX-FileCopyrightText: Copyright 2020 <Licensor>
```

#### BASH/YAML/ENV

```
# SPDX-License-Identifier: Apache-2.0

# SPDXVersion: SPDX-2.2

# SPDX-FileCopyrightText: Copyright 2020 <Licensor>
```

#### MARKUP SYNTAX (HTML/MARKDOWN, ETC)

```html
<!-- SPDX-License-Identifier: Apache-2.0 -->
<!-- SPDXVersion: SPDX-2.2  -->
<!-- SPDX-FileCopyrightText: Copyright 2020 <Licensor>  -->
```

## License

MIT License
