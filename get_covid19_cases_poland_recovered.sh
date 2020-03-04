#!/bin/bash

curl --max-time 3 -s 'https://services1.arcgis.com/0MSEUqKaxRlEPj5g/arcgis/rest/services/ncov_cases/FeatureServer/1/query?f=json&where=(Confirmed%20%3E%200)%20AND%20(Country_Region%3D%27Poland%27)&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&orderByFields=Confirmed%20desc%2CCountry_Region%20asc%2CProvince_State%20asc&outSR=102100&resultOffset=0&resultRecordCount=250&cacheHint=true' | python3 -c "import sys, json; print(json.load(sys.stdin)['features'][0]['attributes']['Recovered'])" 2> /dev/null || echo -1
