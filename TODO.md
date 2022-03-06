# TODO list
- add client wireguard conf
- add samba confs for servers
- handle secrets
  - ssh keys
  - google-ddns creds (servers)
  - wireguard confs and keys (servers)
- refactor roles to use defaults
- check if servers still runs
- improve bootstrap process
- get all git repos I need. Check this:
```shell
gh repo list $ORGNAME --json url | jq '.[]|.url' | xargs -n1 git clone
```

# CLEAN RUN TODO
- No real working bootstrap
- base: group docker doesn't exist
- Asking ssh key every time, should move to http and install ssh env first
- Missing contirb and non-free repos
- Run apt upgrade at least once
- update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor
- remove nano

# MAC
- install https://github.com/koekeishiya/yabai
- install brew tap hashicorp/tap
- enable locate   sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist