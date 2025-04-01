#!/bin/bash

newman run ServeRest_collection.json -g serverest_globals.json -r html --reporter-html-export resultado.html