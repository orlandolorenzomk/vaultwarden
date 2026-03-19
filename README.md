# Vaultwarden

Self-hosted Bitwarden-compatible password manager.

## Usage
```bash
docker compose up -d
```

Access via:
- Bitwarden desktop/mobile app — set server URL to `https://localhost`
- Web vault — open `https://localhost` in your browser

## First run

1. Set `SIGNUPS_ALLOWED=true` in `docker-compose.yml`
2. Start with `docker compose up -d`
3. Trust the local CA cert (macOS only — on Linux this is done automatically):
```bash
docker cp caddy:/data/caddy/pki/authorities/local/root.crt .
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain root.crt
```
4. Register your account via the Bitwarden app or `https://localhost`
5. Set `SIGNUPS_ALLOWED=false` and restart: `docker compose up -d`

## Backup
```bash
./backup.sh /path/to/ssd
```

Copies `data/` to the SSD. Run regularly.