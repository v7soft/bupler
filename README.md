bupler
======

Docker  image to make bup

This project is a part of a backup system. 
A description of task: we have to backup a folder on a local host. 
We use the BUP for it (https://github.com/bup). 
Inside the docker container are two folders that sync with persistent folders on the localhost. 
The folder "source_for_bup" is the source for the BUP, the "target_for_bup" is the target for BUP. 
The docker could be run, for example, next command: 

docker run -i -t -d -v /local_folder/target_for_btsync:/source_for_bup -v /other_local_folder:/target_for_bup setronica/btsyncer

The BUP start every work day at 22:00 by default.
