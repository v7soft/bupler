#!/bin/bash

docker run -i -t -d -v /local_folder/target_for_btsync:/source_for_bup \
-v /local_folder:/target_for_bup docker_bup
