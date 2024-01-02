# Use the official Microsoft SQL Server image as a base
FROM mcr.microsoft.com/mssql/server

# Set environment variables for SQL Server
ENV SA_PASSWORD=Test1234
ENV ACCEPT_EULA=Y

# Create a directory for SQL Server scripts
WORKDIR /usr/src/sql-scripts

# Copy your database schema and data scripts into the container
COPY Init.sql .

# Run SQL Server setup and initialization scripts
RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 20 \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Test1234 -d master -i Init.sql \
    && pkill sqlservr

# Expose the default SQL Server port
EXPOSE 1433