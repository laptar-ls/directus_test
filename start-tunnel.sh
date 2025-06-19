#!/bin/sh

apt-get update && apt-get install -y openssh-client

echo "Starting SSH tunnel to $RDS_HOST through $EC2_HOST..."

ssh -4 -i /id_rsa \
    -o StrictHostKeyChecking=no \
    -o ServerAliveInterval=60 \
    -o ExitOnForwardFailure=yes \
    -N -L 0.0.0.0:${LOCAL_PORT}:${RDS_HOST}:${RDS_PORT} ${EC2_USER}@${EC2_HOST}
