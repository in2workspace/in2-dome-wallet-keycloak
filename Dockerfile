# Start with the official Keycloak image from Quay.io (https://quay.io/repository/keycloak/keycloak?tab=tags)
FROM quay.io/keycloak/keycloak:24.0.4

# Containers should not run as root
RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot
USER nonroot

# Copy the theme and realm files into the image
COPY /themes /opt/keycloak/themes
COPY /data/import/wallet-realm.json /opt/keycloak/data/import/

# Command to start Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--health-enabled=true", "--metrics-enabled=true", "--log-level=INFO", "--import-realm"]