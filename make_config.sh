#!/usr/bin/env bash

echo "Making configure file for Apache2"
cat bad_IP | awk '{print "Require not ip " $1}' > bad_IP.apache.conf

echo "Making configure file for Nginx"
cat bad_IP | awk '{print "deny " $1 ";"}' > bad_IP.nginx.conf

echo '*.conf' > .gitignore
echo '.gitignore' >> .gitignore

echo "Done."
