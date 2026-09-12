# Bad IP

A list maintained by ***ysh*** recording some IP address which might be abused.

they're forbidden by all services operate under ***CITRC*** and ***HARC*** and ***ysh's domain***.

## Usage

Unpack this Repo into a safe place.

> Note that you should take care of permission so that the user role used by your web server (`www-data` for instance) can read this list

And add the following code into your server config:

### Apache2

`/etc/apache2/apache.conf`

```xml
<Location "/">
    <RequireAll>
        Require all granted
        Include <Repo Location>/bad_IP
    </RequireAll>
</Location>
```
