#!/usr/bin/env bash

set -e


function get_single_post() {
	# without header information
    curl "https://jsonplaceholder.typicode.com/posts/3"
    
    # with header information
    curl -i "https://jsonplaceholder.typicode.com/posts/3"

    # with only head information
    curl --head "https://jsonplaceholder.typicode.com/posts/3"

    # with only head information
    curl --I "https://jsonplaceholder.typicode.com/posts/3"
	return 0
}

function get_all_posts() {
	curl "https://jsonplaceholder.typicode.com/posts"
	return 0
}


function put_text_response_in_file() {
    mkdir text_folder
    cd folder
    curl -o text.txt "https://jsonplaceholder.typicode.com/posts/3"
    return 0
}

function download_image_in_file() {
    set +e
    mkdir picture_folder
    cd picture_folder
    curl -o photo.png "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
    return 0
}

function limit_transfer_rate() {
    set +e
    mkdir picture_folder
    cd picture_folder
    curl -o photo.png  --limit-rate 1000B "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
    return 0
}


function post_with_body() {
    curl --data "title=Hello&body=Hello World" "https://jsonplaceholder.typicode.com/posts/"
    return 0
}


function update_with_body() {
    curl -X PUT -d "title=Hello" "https://jsonplaceholder.typicode.com/posts/3"
    return 0
}

function delete_request() {
    curl -X DELETE "https://jsonplaceholder.typicode.com/posts/3"
    return 0
}

function secure_route_login() {
    curl -u admin:12345 "https://jsonplaceholder.typicode.com"
    return 0
}

function redirect() {
    curl -L "https://google.com"
    return 0
}


function upload_file_through_ftp() {
    curl -u marv@boltcliq.com:12345! -T hello.txt ftp://ftp.boltcliq.com
    return 0
}

function download_file_through_ftp() {
    curl -u marv@boltcliq.com:12345! -T -o ftp://ftp.boltcliq.com/hello.txt
    return 0
}


upload_file_through_ftp