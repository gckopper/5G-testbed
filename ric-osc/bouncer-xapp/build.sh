#!/bin/bash

docker build -t bouncer .
docket tag bouncer example.com:80/bouncer
CHART_REPO_URL=http://localhost:18080 dms_cli onboard ./init/config-file.json  ./init/schema.json
