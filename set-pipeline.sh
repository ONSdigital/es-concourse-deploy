#!/usr/bin/env bash

fly -t spt -p pr-request-concourse -c pipeline.yml -v repo-name=es-concourse-deploy
fly -t spt -p pr-request-enrichment -c pipeline.yml -v repo-name=es-enrichment-sg