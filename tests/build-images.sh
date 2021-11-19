#!/usr/bin/env bash
set -ex

ver=(NATS_STREAMING_SERVER 0.23.2)

(
	cd "${ver[1]}/alpine3.14"
	docker build --tag nats-streaming:0.23.2-alpine3.14 .
)

(
	cd "${ver[1]}/scratch"
	docker build --tag nats-streaming:0.23.2-scratch .
)
