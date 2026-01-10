# Compose Files for Hosting Foundry vtt

Docker compose command for mirror:

```bash
docker compose -p fvtt-mirror -f compose.yml -f compose_mirror.yml up -d
```

Docker compose command for dev:

```bash
docker compose -p fvtt-comp -f compose.yml -f compose_comp.yml up -d
```

Docker compose command for experimental:

```bash
docker compose -p fvtt-exp -f compose.yml -f compose_v14.yml up -d
```

## Stopping the containers

Run the same up command but with the down keyword
