# Infra[structure] stuff for Bryan
## Validate
```bash
make validate
```

## userdata
### What it does
Installs `git` and `gh`

Sets up `nvm`

Installs Node.js 18^

Sets `npm` legacy peer dependencies

Sets some boilerplate git config fields:
- `core.excludesfile`
- `user.name`
- `user.email`

### To use
Upload or copy/paste when creating a dev EC2 instance
