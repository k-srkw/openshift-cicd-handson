#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 USER_COUNT"
  exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "Error: USER_COUNT must be a number."
  exit 1
fi

USER_COUNT=$1

for i in $(seq 1 $USER_COUNT)
do
  user_name=user$i

  echo "Installing for $user_name ..."
  ./demo.sh install --project-prefix $user_name
done

