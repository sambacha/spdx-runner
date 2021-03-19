# SPDX Runner 

> CLI/CI Software License check

## Overview

Verifies that files include SPDX license headers

Check file extensions have the allowed/acceptable SPDX headers for them.

## Usage 
  
Provide a dictionary, with file types as the keys and a list of accepted licenses as the values.

### Example
```python 
      {
        "sol": ["MIT", "BSD-3"],
        "py": ["ISC"]
      }
```

## License 

SPDX-License-Identifier: Apache-2.0
