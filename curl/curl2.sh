#!/usr/bin/env bash

set -e

# see the protocol
function see_the_protocol() {
    curl --trace-ascii debugdump.txt http://www.example.com/
}

# see the timing
function see_the_timing() {
    curl --trace-ascii d.txt --trace-time https://learnguagehub.com/
}

# resolve host
function resolve_host() {
    curl --resolve www.example.org:80:127.0.0.1 http://www.example.org/
}

# resolve port
function resolve_port() {
    curl http://www.example.org:1234/
    curl --proxy http://proxy.example.org:4321 http://remote.example.org/
}

# username and password 
function username_password() {
    curl http://user:password@example.org/
    curl -u user:password http://example.org/
}

# fetching pages

# get
function get(){
    curl https://curl.haxx.se
}

# head
function head(){
    # to show the header response too
    curl --include https://curl.haxx.se
    # to show only the header response
    curl --head https://curl.haxx.se
}

# multiple urls
function miltiple_urls(){
    # two get requests on one line
    curl http://url1.example.com http://url2.example.com

    # two post requests on one line
    curl --data name=curl http://url1.example.com http://url2.example.com
}


# multiple http methods in a single command line
function multi_methods(){
    # two get requests
    curl -I http://example.com --next http://example.com

    # get and post requests
    curl -d score=10 http://example.com/post.cgi --next http://example.com/results.html
}


# html forms

# form get
function form_get() {
    curl "http://www.example.com/when/junk.cgi?birthyear=1905&press=OK"
}

# form post --data
function form_post() {
    curl --data "birthyear=1905&press=%20OK%20" http://www.example.com/when.cgi
}

# form post --data-urlencode
function form_post_urlencode() {
    curl --data-urlencode "name=I am Daniel" http://www.example.com
}

# file upload - multipart/form-data
function file_upload_post() {
    curl --form upload=@localfilename --form press=OK http://boltcliq.com
}

# hidden files 
function hidden_fields() {
    curl --data "birthyear=1905&press=OK&person=daniel" http://boltcliq.com
}


# http uplaod
function put_upload() {
    curl --upload-file uploadfile http://www.example.com/receive.cgi
}

# HTTP Authentication

# basic auth
# other auth methods include
# --ntlm, --digest, --negotiate  --anyauth
function basic_auth() {
    curl --user name:password http://www.example.com
} 

# proxy authentication
function proxy_authentication() {
    curl --proxy-user proxyuser:proxypassword curl.haxx.se
}

# referer
function referer() {
    curl --referer http://www.example.come http://www.example.com
}

# user agent
function user_agent() {
    # To make curl look like Internet Explorer 5 on a Windows 2000 box:
    curl --user-agent "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)" http://boltcliq.com
    # Or why not look like you're using Netscape 4.73 on an old Linux box:
    curl --user-agent "Mozilla/4.73 [en] (X11; U; Linux 2.2.15 i686)" [URL]
}

# Redirects

# location header
function location_header() {
    curl --location http://www.example.com
}


# Cookies
function cookie_options() {
    curl --cookie "name=Daniel" http://www.example.com

    # Record cookies with curl by using the --dump-header (-D) option like:
    curl --dump-header headers_and_cookies http://www.example.com

    # curl --dump-header headers_and_cookies http://www.example.com
    curl --cookie stored_cookies_in_file http://www.example.com

    # let curl understand cookies from a page and follow a location
    curl --cookie nada --location http://www.example.com

    # The --cookie (-b) switch automatically detects if a given file is such a cookie file and parses it
    curl --cookie cookies.txt --cookie-jar newcookies.txt http://www.example.com
}


# HTTPS

# HTTPS is http secure
function https_request() {
    curl https://secure.example.com
}

function https_certificates() {
    # Use a certificate with curl on a HTTPS server like:
    curl --cert mycert.pem https://secure.example.com
}

function customized_certificate() {
    # At times you may end up with your own CA cert store and then you 
    # can tell curl to use that to verify the server's certificate:
    curl --cacert ca-bundle.pem https://example.com/
}


# Custom Request Elements

# Modify method and headers
function modify_method() {
    # change the POST request to a PROPFIND and send the data as 
    # Content-Type: text/xml (instead of the default Content-Type) like this:
    curl --data "<xml>" --header "Content-Type: text/xml"   --request PROPFIND example.com


    # You can delete a default header by providing one without content. 
    # Like you can ruin the request by chopping off the Host: header:
    curl --header "Host:" http://www.example.com

    # You can add headers the same way. Your server may 
    # want a Destination: header, and you can add it:
    curl --header "Destination: http://nowhere" http://example.com
}

function changed_methods() {
    # change GET request to POST request
    curl -X POST http://example.org/
}

function posting_with_json_body() {
    curl --data '{"email":"test@example.com", "name": ["Boolean", "World"]}' -H 'Content-Type: application/json' https://httpbin.org/post
    # curl --data @data.json https://httpbin.org/post
}

posting_with_json_body