#
# Do this old-style, using a simple Makefile to generate my web site.
# This is about a simple as it gets people.
# Seriously, why do you need more than this?
#

all: help

server:
	jekyll serve

pub: publish

publish: site
	aws s3 sync public/. s3://goulburnspeedway.com

site:
	jekyll build

help:
echo "Make commands: server, publish, site"