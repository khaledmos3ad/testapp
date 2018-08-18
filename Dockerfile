# Start with a base image Python3 
FOM python:3-slim

# Maintainer Info
LABEL maintainer="khaled.mosaad-mohamed@vodafone.com"

# Install Requirement
RUN pip install gunicorn pymysql flask flask_sqlalchemy flask_login flask_bcrypt

# Copy TestApp.py
COPY testApp.py /

# Expose Port
EXPOSE 8000

# Define Entry Point of Container
ENTRYPOINT ["/usr/local/bin/gunicorn", "-b", ":8000", "testApp:app"]
