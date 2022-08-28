#!/bin/bash
VERBOSE=0
ARTICLE=''
LANG=en

# [EXAMPLE HERE]

if ((VERBOSE > 2)); then
  printf '%s\n' 'Non-option arguments:'
  printf '%q ' "${remaining[@]]}"
fi

if ((VERBOSE > 1)); then
  printf 'Downloading %s:%s\n' "$LANG" "$ARTICLE"
fi

if [[ ! $ARTICLE ]]; then
  printf '%s\n' "No articles!">&2
  exit 1
fi

save_webpage "https://${LANG}.wikipedia.org/wiki/${ARTICLE}"
