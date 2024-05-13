#!/bin/bash -ev
# run with sudo

scriptDir=$(dirname "${BASH_SOURCE[0]}")
echo "scriptDir: ${scriptDir}"

${scriptDir}/bld/xmrig -a rx -o stratum+tcp://rx.unmineable.com:3333 -u LTC:ltc1qshmk2u694y60dg4guvn4saxkpkc9jzxq2dwu59.LTC_$(uname -n)_xmrig#0yr0-ywoq -p x --randomx-1gb-pages
