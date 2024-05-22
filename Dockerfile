# Start with the official Keycloak image
FROM quay.io/keycloak/keycloak:latest

# Copy the realm and theme files into the image
COPY /imports/wallet-realm.json /opt/keycloak/data/import/
COPY /imports/themes /opt/keycloak/themes

# Expose the port
EXPOSE 9099

# Command to start Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--health-enabled=true", "--metrics-enabled=true", "--log-level=INFO", "--import-realm"]