# node-angular-chrome-java

This Docker image is based on **debian:stable-slim** and is meant for **Angular unit/e2e tests** in CI/CD environments.

It contains:
  - **Embedded Node 16 + npm 8** to build/run **Angular** application
  - **Google Chrome Headless** (92) preconfigured to run *unit tests* and *e2e tests* of an **Angular** application
  - **Java JRE 11** to run a **WireMock** server

## Build the image

```bash
docker build . -t sylvainstoesel/node-angular-chrome-java
```

## Get the image

```bash
docker pull sylvainstoesel/node-angular-chrome-java
```
