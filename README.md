<div align="center">
<h1>DOME Wallet Keycloak</h1>
<span>by </span><a href="https://in2.es">in2.es</a>
<p><p>

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=alert_status)](https://sonarcloud.io/dashboard?id=in2workspace_dome-wallet-keycloak)

[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=bugs)](https://sonarcloud.io/summary/new_code?id=in2workspace_dome-wallet-keycloak)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=vulnerabilities)](https://sonarcloud.io/dashboard?id=in2workspace_dome-wallet-keycloak)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=security_rating)](https://sonarcloud.io/dashboard?id=in2workspace_dome-wallet-keycloak)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=in2workspace_dome-wallet-keycloak)
[![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=ncloc)](https://sonarcloud.io/dashboard?id=in2workspace_dome-wallet-keycloak)

[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=coverage)](https://sonarcloud.io/summary/new_code?id=in2workspace_dome-wallet-keycloak)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=duplicated_lines_density)](https://sonarcloud.io/summary/new_code?id=in2workspace_dome-wallet-keycloak)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=in2workspace_dome-wallet-keycloak)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=in2workspace_dome-wallet-keycloak)
[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project=in2workspace_dome-wallet-keycloak&metric=sqale_index)](https://sonarcloud.io/summary/new_code?id=in2workspace_dome-wallet-keycloak)

</div>

# Introduction
DOME Wallet Keycloak is a service that allows to build the identity provider solution for the Wallet application. It composes of the newest version of Keycloak and integrate a custom login interface with the look & feel of DOME, as well as a basic realm with the default user for the Wallet application

# Installation

We offer a Docker image to run the application. You can find it in [Docker Hub](https://hub.docker.com/u/in2workspace).

Here, you can find an example of a docker-compose.yml file to run the application with all the required services and configuration.

## Running the application
```
version: '3.8'

services:
  wallet-identity-provider:
    image: in2workspace/dome-wallet-keycloak:latest
    environment:
      KEYCLOAK_ADMIN: "admin"
      KEYCLOAK_ADMIN_PASSWORD: "1234"
      KC_HTTP_PORT: "9099"
      KC_DB: "postgres"
      KC_DB_URL: "jdbc:postgresql://keycloak-postgres/keycloak"
      KC_DB_URL_PORT: "5433"
      KC_DB_USERNAME: "user"
      KC_DB_PASSWORD: "1234"
    ports:
      - "9099:9099"
    links:
      - keycloak-postgres

  keycloak-postgres:
    image: postgres:latest
    restart: unless-stopped
    environment:
      POSTGRES_DB: "keycloak"
      POSTGRES_USER: "user"
      POSTGRES_PASSWORD: "1234"
    ports:
      - '5433:5432'
    volumes:
      - keycloak-postgres-data:/var/lib/postgresql/data

```

## Contribution

### How to contribute
If you want to contribute to this project, please read the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License
This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Project/Component Status
This project is currently in development.

## Contact
For any inquiries or further information, feel free to reach out to us:

- **Email:** [Oriol Canadés](mailto:oriol.canades@in2.es)
- **Name:** IN2, Ingeniería de la Información
- **Website:** [https://in2.es](https://in2.es)

## Acknowledgments
This project is part of the IN2 strategic R&D, which has received funding from the [DOME](https://dome-marketplace.eu/) project within the European Union’s Horizon Europe Research and Innovation programme under the Grant Agreement No 101084071.

