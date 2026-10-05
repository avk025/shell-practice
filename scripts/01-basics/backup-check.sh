#!/bin/bash

result=$(find "$1" -mtime -1)
if [ -n "$result" ]; then
	echo "backup found"
else
	echo "no recent backup"
fi

