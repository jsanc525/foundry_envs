# Compose File for Hosting Foundry vtt

A compose file that makes use of the [felddy docker image for foundryvtt](https://hub.docker.com/r/felddy/foundryvtt). The `Dockerfile` adds the [official foundry cli](https://github.com/foundryvtt/foundryvtt-cli) to the image.  

## Envrionment set up

1. Create a `.env` file for holding environment configs.  
**Note:** HOSTNAME and FVTT_USER_DATA are required env vars for container to function correctly.  

```bash
cp templates/template_env .env
```

2. Create a secrets file for foundry related secrets.  

```bash
cp templates/template_secrets.json secrets.json
```

**Note:** `secrets.json` and `.env*` have been added to the ignore file do not rename the secrets file or prepend the env file without updating `.gitignore` to avoid accidentally leaking secrets or configs.  

## Start the environment

Docker compose commands

```bash
# First run, Dockerfile change, version change
docker compose up -d --build
# Subsequent runs
# docker compose up -d
# or specify an env file in the case that multiple envs exist
# docker compose --env-file .env.prod up -d --build
```

## Stopping the containers

```bash
docker compose down
```
