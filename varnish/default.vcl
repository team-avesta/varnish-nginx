vcl 4.0;

backend default {
  .host = "backend-host";
  .port = "80";
}

sub vcl_backend_response
{
# unset beresp.http.Age;
 set beresp.ttl = 48h;
 #set beresp.grace = 24h;
}

sub vcl_recv {
        unset req.http.Accept-Encoding;
        unset req.http.cookie;
    # Happens before we check if we have this in cache already.
    #
    # Typically you clean up the request here, removing cookies you don't need,
    # rewriting the request, etc.

   if (req.method == "POST") {
        ban("req.http.host == " +req.http.host+" && req.url ~ "+req.url);
 #      vcl_ error( 200, "Ban added");
#       return (purge);
   }
}
