#!/bin/bash

curl \
  --header "Authorization: Token 321d5198-1e9a-4f76-94ac-24c4476d1822" \
  --header "Content-Type: application/json" \
  --data "{
    \"value\":\"42 %\",
    \"sha\":\"${GITHUB_SHA}\"
  }" \
  https://seriesci.com/api/sambacha/spdx-runner/:series/one
  
  
