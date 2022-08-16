#!/usr/bin/env bash


function get_latest_version() {
	echo "Resolvingn Host" 1>&2
	echo "Starting Connection" 1>&2
	echo "Downloading JSON" 1>&2
	echo "Extracting Version" 1>&2
	echo "3.25.2" 
}

NEWEST=$(get_latest_version)

# command substitution $()
echo "The version of this service is $NEWEST"
