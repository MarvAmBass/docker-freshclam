# Docker Volume Container for up to date clamav virus definitions using freshclam (marvambass/freshclam)
_maintained by MarvAmBass_

[FAQ - All you need to know about the marvambass Containers](https://marvin.im/docker-faq-all-you-need-to-know-about-the-marvambass-containers/)

## What is it

This Dockerfile (available as ___marvambass/freshclam___) gives you a volume container with a running __freshclam__ daemon. So it's ensured that you'll have up to date virus definitions for ___clamav___ in one place for several Docker containers.

View in Docker Registry [marvambass/freshclam](https://registry.hub.docker.com/u/marvambass/freshclam/)

View in GitHub [MarvAmBass/docker-freshclam](https://github.com/MarvAmBass/docker-freshclam)

## Using the marvambass/freshclam Container 

First start the volume container and give it a meaningful name

    docker run -d --name freshclam marvambass/freshclam

Now you can use the virus definitions in several containers using the following command

    docker run -i -t --volumes-from freshclam ubuntu:14:04 /bin/bash
