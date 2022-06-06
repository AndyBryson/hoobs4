#!/bin/bash

docker run -d --restart unless-stopped --name hoobs -v data:/var/lib/hoobs -p 8040:80 hoobs
