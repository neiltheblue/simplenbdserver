# simplenbdserver

Ubuntu based container exposes network block devices

## To run a server

The basic format is:

```
docker run -d \
--name nbd \
-v <local_block_dir>:<container_block_dir>
-p "8520:8520" \
neiltheblue/simplenbdserver \
<container_block_dir>/<img_file> ...
```

Where `<local_block_dir>` is a directory on your host with block devices to export. They can be mapped anywhere in your container and referenced with command option `<container_block_dir>/<img_file>`. For example:

```
docker run -d \
--name nbd \
-v /images:/block
-p "8520:8520" \
neiltheblue/simplenbdserver \
/block/disk1.img
```
The options may also include `--cow` to run in copy-on-write mode and `--readonly` to run in readonly mode.
