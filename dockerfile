# Use the official MySQL image
FROM mysql:8.0

# Set environment variables (these will be overridden by Render's settings)
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=pharmacy_db
ENV MYSQL_USER=pharmacy_user
ENV MYSQL_PASSWORD=pharmacy_password

# Copy initialization script to automatically run on first startup
COPY c_pharmacy.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
