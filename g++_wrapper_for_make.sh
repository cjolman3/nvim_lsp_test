#!/bin/bash

echo "{
  \"directory\": \"$(pwd)\",
  \"file\": \"${1}\",
  \"command\": \"g++ ${@:2}\"
}," >> compile_commands.raw.json

g++ "$@"

