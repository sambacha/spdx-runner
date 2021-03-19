# SPDX Runner 

> CLI/CI Software License check

## Overview

Verifies that files include SPDX license headers

Check file extensions have the allowed/acceptable SPDX headers for them.

```
C source: // SPDX-License-Identifier: <SPDX License Expression>
C header: /* SPDX-License-Identifier: <SPDX License Expression> */
ASM:      /* SPDX-License-Identifier: <SPDX License Expression> */
scripts:  # SPDX-License-Identifier: <SPDX License Expression>
.rst:     .. SPDX-License-Identifier: <SPDX License Expression>
.dts{i}:  // SPDX-License-Identifier: <SPDX License Expression>
```

## Usage 
  
Provide a dictionary, with file types as the keys and a list of accepted licenses as the values.

### Example
```python 
      {
        "sol": ["MIT", "BSD-3"],
        "py": ["ISC"]
      }
```

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
