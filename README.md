# SPDX Runner 

> CLI/CI Software License check

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

## Usage 
  
Provide a dictionary, with file types as the keys and a list of accepted licenses as the values.

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

SPDX-License-Identifier: Apache-2.0
