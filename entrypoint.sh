#!/usr/bin/env bash

cd /animdl/downloads/
if [ ${LIST} = 1 ]; then
  if [ -f "/animdl/downloads/animelist.txt" ]; then
    echo "|| Anime list ||"
    IFS=$'\n'
    for anime in $(cat /animdl/downloads/animelist.txt); do
      echo "${anime}"
    done
    echo "|| End of list ||"
    for anime in $(cat /animdl/downloads/animelist.txt); do
      echo "|| Downloading ${anime} with arguments "\"$(eval echo ${ANIMARG})\"" ||"
      eval "animdl download ${ANIMARG}"
    done
  fi
else
  echo "|| Downloading ${anime} with arguments "\"$(eval echo ${ANIMARG})\"" ||"
  eval "animdl download ${ANIMARG}"
fi
exit