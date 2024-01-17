#!/bin/bash

openapi-generator-cli generate -g ruby --additional-properties=library=faraday,gemName=tricentis_tm_api -i https://swagger.ttm4j.tricentis.com/swagger.json -o .

