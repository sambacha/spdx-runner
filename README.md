# SPDX License Check

> SPDX Version 2.2

## Overview 

- bash script, `spdx.sh`
- license header, `license_header`
- test files, `*.js, *.java, etc`

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


### License Header Examples 

#### MDX/JSX
/*SPDX-License-Identifier: Apache-2.0
SPDXVersion: SPDX-2.2
SPDX-FileCopyrightText: Copyright 2020 <Licensor>*/

#### REGULAR
// SPDX-License-Identifier: Apache-2.0
// SPDXVersion: SPDX-2.2
// SPDX-FileCopyrightText: Copyright 2020 <Licensor>

#### BASH/YAML/ENV
# SPDX-License-Identifier: Apache-2.0
# SPDXVersion: SPDX-2.2
# SPDX-FileCopyrightText: Copyright 2020 <Licensor>

#### MARKUP SYNTAX (HTML/MARKDOWN, ETC)
<!-- SPDX-License-Identifier: Apache-2.0 -->
<!-- SPDXVersion: SPDX-2.2  -->
<!-- SPDX-FileCopyrightText: Copyright 2020 <Licensor>  -->


## License 

MIT License 
