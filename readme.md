# Create
`git submodule add https://github.com/xmrig/xmrig.git xmrig/rep`
`git config -f .gitmodules submodule.xmrig.branch master`

# Clone
- `mkdir min && cd min`
- one step (one of the following):
    - `git clone --recurse-submodules --remote-submodules https://github.com/bsolomenco/min.git .`
    - `git clone --depth 1 --jobs 10 --recurse-submodules --remote-submodules --shallow-submodules --single branch --verbose`
- multiple steps:
    - `git clone https://github.com/bsolomenco/min.git .`
    - follow the step(s) for update

# Update
- `git submodule update --init --recursive --remote`

# Patch
- do local changes
- `git diff > patch.diff`
- `git apply patch.dif`

# xmrig
- rep               : original repository
- xmrig_bld.sh      : build script
- cpu_unMineable.sh : start mining (sudo)