FROM mysql:8.0

# Set environment variables for MySQL setup
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=freedb_clinexa
ENV MYSQL_USER=freedb_clinexa
ENV MYSQL_PASSWORD=root

# Copy schema.sql into the Docker container for automatic import
COPY ./schema.sql /docker-entrypoint-initdb.d/
