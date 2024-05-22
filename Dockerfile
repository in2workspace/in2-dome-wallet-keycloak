# Start with the official Keycloak image
FROM quay.io/keycloak/keycloak:latest

# Copy the theme files into the image
COPY /imports/themes /opt/keycloak/themes

# Expose the port
EXPOSE 9099

# Command to start Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]