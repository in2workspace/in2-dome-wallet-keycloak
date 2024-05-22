# Start with the official Keycloak image
FROM quay.io/keycloak/keycloak:latest

# Copy the theme and realm files into the image
COPY /imports/themes /opt/keycloak/themes
COPY /imports/wallet-realm.json /opt/keycloak/data/import/

# Expose the port
EXPOSE 9099

# Command to start Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--health-enabled=true", "--metrics-enabled=true", "--log-level=INFO", "--import-realm"]