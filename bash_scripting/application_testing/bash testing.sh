#!/usr/bin/env bash

set -e

function unit_tests() {
	echo "running unit tests"
	return 0
}

function integration_tests() {
	echo "running integration tests"
	return 0
}

function e2e_tests() {
	echo "running e2e tests"
	return 0
}

set +e
unit_tests
set -e
integration_tests
e2e_tests
