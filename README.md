# ipcalc web form

Sometimes, you just need to see how to chop of a bunch of IP addresses into subnets of a certain size. This tool helps. I'm hosting it here in case the [site](https://jodies.de) I stole it from goes down.

### Usage

To start it, use `docker compose up -d` which will pull the image which is an Apache2 web server, configured with perl CGI and HTTPS, so that it works well with Cloudflare.