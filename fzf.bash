#!/usr/bin/env bash

my_find() {
  declare -a ARGS=()
  for i in $(seq $#); do
    case "${!i}" in
      -*)
        ARGS+=("${!i}")
        ;;
      *)
        local MY_PASSWORD=$(cd ${PREFIX}; fzf -1 -0 -q "${!i}")
        if [[ -n $MY_PASSWORD ]]; then
          MY_PASSWORD=${MY_PASSWORD##${PREFIX}/}
          MY_PASSWORD=${MY_PASSWORD%%.gpg}
          ARGS+=("${MY_PASSWORD}")
        fi
        ;;
    esac
  done
  cmd_show "${ARGS[@]}"
}

my_find "$@"
