docker-image-shadowsocks
========================

Usage
-----

To create the image `tifayuki/shadowsocks`, execute the following command onthe docker-image-shadowsocks folder:

    docker build -t tifayuki/shadowsocks .

You can now push your image to the registry:

    docker push tifayuki/shadowsocks

Running shadowsocks
-------------------

Start your image binding the external ports 8388 in all interfaces to your container:

    docker run -d -p 8388:8388 tifayuki/shadowsocks

You can now connect your shadowsocks server with the following info:

    Server IP: <your vps ipaddress>
    Server Port: 8388
    Password: mypass
    Encryption: aes-256-cfb

To bind the server on another port like 443, you can run:

    docker run -d -p 443:8388 tifayuki/shadowsocks

Configure shadowsocks
---------------------

You can add option to your shadowsocks directly when starting the container.This will overwrite the default settings. For example:

If you want to use another password instead of the default "mypass", say `anotherpass`, you can run:

    docker run -d -p 443:8388 tifayuki/shadowsocks -k anotherpass

Reference
---------

Shadowsocks is a fast sock5 tunnel.
More information, please visit: https://github.com/clowwindy/shadowsocks
