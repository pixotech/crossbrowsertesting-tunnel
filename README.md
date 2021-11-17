# crossbrowsertesting-tunnel
Easily run a named tunnel for cross browser testing on private firewalled networks


# To Start

`docker run --name=crossBrowserTestingTunnel --restart=always --log-driver none --detach -e USERNAME=email@example.com -e AUTHKEY=123456789 -e TUNNELNAME="DisplayNameInList" pixotech/crossbrowsertesting-tunnel`

Use `--log-driver none` when you are not debugging an issue to stop logs from growing exponentially
