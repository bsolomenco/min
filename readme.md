# Create
- `git submodule add https://github.com/xmrig/xmrig.git xmrig/xmrig`
- `git submodule add https://github.com/xmrig/xmrig-cuda.git xmrig/cuda`
- `git config -f .gitmodules submodule.xmrig.branch master`

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
- `sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev`
- rep                           # original repository
- `pushd rep && git apply ../donate0.diff && popd`
- `./bld.sh`                    # build script
- `sudo ./cpu_unMineable.sh`    # start mining

# Autostart
- force autologin
    - solution 1: GUI ...
    - solution 2: `sudo nano /etc/gdm3/custom.conf`
- autostart app
    - `mkdir -p ~/.config/autostart/`
    - `cp xmrig/xmrig.desktop ~/.config/autostart`
- no sudo password
    - `sudo visudo`
    - add: `user ALL=(ALL) NOPASSWD: /path/to/script.sh`
        - example (for user `s`): `s ALL=(ALL) NOPASSWD: /home/s/min/xmrig/cpu_unMineable.sh`

