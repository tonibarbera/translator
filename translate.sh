#!/bin/bash - 
#===============================================================================
#
#          FILE: translate.sh
# 
#         USAGE: translate.sh gets the input from stdin
# 
#   DESCRIPTION: Translate texts from EN to AR, ZH, FR, RU, ES using GT
# 
#        AUTHOR: Toni Barberà (toni.barbera@gmail.com)
#       CREATED: 16/07/22 22:45
#      REVISION:  ---
#===============================================================================

set -o nounset                        

INPUTTEXT=$(</dev/stdin)
URLTEXT="$(php -r "echo rawurlencode('${INPUTTEXT}');")"

firefox --new-tab --url https://translate.google.com/\?sl\=en\&tl\=ar\&text\=$URLTEXT\&op\=translate &
firefox --new-tab --url https://translate.google.com/\?sl\=en\&tl\=zh\&text\=$URLTEXT\&op\=translate &
firefox --new-tab --url https://translate.google.com/\?sl\=en\&tl\=fr\&text\=$URLTEXT\&op\=translate &
firefox --new-tab --url https://translate.google.com/\?sl\=en\&tl\=ru\&text\=$URLTEXT\&op\=translate &
firefox --new-tab --url https://translate.google.com/\?sl\=en\&tl\=es\&text\=$URLTEXT\&op\=translate &

