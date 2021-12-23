#!/usr/bin/bash

# Cutting directories and files rights:-------------------------------
ls -l | cut -c 1-11 | sort | uniq > 2_pipeline_results.log


