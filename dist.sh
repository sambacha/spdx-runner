#!/bin/bash
# GPG Fingerprint 
if [ -z $NOSIGN ]; then
  echo "==> Signing..."
  shasum -a256 * > ./spdx${VERSION}_SHA256SUMS
  gpg --default-key 6F6EB43E --detach-sig ./spdx${VERSION}_SHA256SUMS
fi
