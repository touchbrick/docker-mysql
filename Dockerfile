# Use official MySQL image
FROM mysql:8.0

# Set environment variables with defaults
ENV MYSQL_ROOT_PASSWORD=rootpass
ENV MYSQL_DATABASE=myodb
ENV MYSQL_USER=touchbrick
ENV MYSQL_PASSWORD=demodatasource

# Copy SQL scripts to docker-entrypoint-initdb.d
# Scripts in this directory are executed in alphabetical order
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306
