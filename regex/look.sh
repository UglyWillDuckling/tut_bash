# /usr/bin/env bash

# use Perl compatible match grep in order to match with lookbehind/lookahead
#
echo 'Match "quoted words"---not quote marks.' | grep -oP '"\K[^"]+(?=")'
# this will match the double quoted words only, without the quote marks themselves

