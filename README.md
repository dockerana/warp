# warp

===

a clean, simple, customizable wrapper for Docker and its ecosystem.

### 50-100 word summary for 2015 Docker hackathon

`warp` is a simple wrapper for the Docker ecosystem. One stop shop to install, update, and interact with `docker`, `machine`, `compose`, etc. 

Provides capability to dynamically load functions and namespaces from your own helper scripts or convenience functions. Allows for theme support to customize color handling and screen size, including a truncate as well as a line wrap mode.

`warp` has extremely minimal system dependencies (almost 100% `bash`), so it will work as-is on a variety of vanilla and minimal operating systems without extra language support needed, including OS X and Ubuntu.

### Install

***DISCLAIMER*** - this will move your existing Docker binary to from `docker` to `docker-orig` and `warp` will take the place of `docker`, install with caution!

```
curl -sSL warp.dockerana.com > warp
chmod +x warp
./warp
```

### Screenshots

Example of wrapping and truncation of output to accomodate different screen sizes. Ever presented docker on a screen with low resolution or tried to use it from your phone? This will help.

<img src="https://raw.githubusercontent.com/dockerana/warp/master/documentation/screenshots/1.png">

Example of quick install of `docker` and ecosystem tools:

<img src="https://raw.githubusercontent.com/dockerana/warp/master/documentation/screenshots/2.png" width="50%">

Example of error condition highlighting and accenting for `docker` commands

<img src="https://raw.githubusercontent.com/dockerana/warp/master/documentation/screenshots/3.png" width="66%">

Example adding custom functions

<img src="https://raw.githubusercontent.com/dockerana/warp/master/documentation/screenshots/4.png" width="66%">

<img src="https://raw.githubusercontent.com/dockerana/warp/master/documentation/screenshots/5.png" width="66%">

<img src="https://raw.githubusercontent.com/dockerana/warp/master/documentation/screenshots/6.png" width="66%">
