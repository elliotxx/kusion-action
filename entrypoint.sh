#!/bin/sh -l
set -e

APP_PATH="/kusion/bin/kusion"

subcommand=$1
settings=$2
arguments=$3
filenames=$4

params=$subcommand


if [ "$subcommand" = "apply" ] || [ "$subcommand" = "compile" ]; then
    if [ -n "$settings" ]; then
        params="$params -Y $settings"
    fi
    if [ -n "$arguments" ]; then
        params="$params $arguments"
    fi
    if [ -n "$filenames" ]; then
        params="$params $filenames"
    fi
fi

$APP_PATH $params