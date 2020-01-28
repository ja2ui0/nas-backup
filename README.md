# nas-backup
Create a mergerfs / snapraid / rsync container to back up your NAS.

## How to use
This is currently just the start of a larger project. It will not be useful for any purpose in its current form, but you can play around and use it for whatever you want. This readme will be updated with any meaningful commits.
- mount some block devices (preferrably under `/mnt`) on your host system
- run `nas-backup` from this repo and follow the prompts
- `docker exec -it nas-backup sh` and look around
- that's it for now

## TODO
- add a question for mounting backup root / source in the container
- maybe some automation around choosing backup sets, or maybe a web frontend

## FAQ
### What inspired this?
- I want to back up my Synology NAS to a cheap JBOD DAS, and the host device doesn't support mergerfs which makes that a fairly trivial process. It does run docker though, and it can expose the needful to a container, and so.

### Why do you have snapraid and rsync in the image if they're not being used?
- Use your imagination! They will almost surely be used in the future, and if they're not, I'll respin the image without them.
### What systems will this run on?
- It has only been tested on Linux, and while the container should run on anything that runs docker, the helper script is bash and expects some specifically linux stuff. That said, I wrote and tested it on a Synology NAS (debian) and I can't imagine it not running on basically any modern linux.
### Why don't you just do something else instead?
- Because sometimes I'm stubborn and numb to reality.
