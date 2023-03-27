#!/usr/bin/env bash

{
  declare -p ews || declare -A ews=([base]="${0%/*}" [exec]="${0}" \
      [name]='Netronic GTK Themes Builder' [sign]='by Brendon, 03/27/2023.')
} &> /dev/null

# DPIs.
readonly -a NET_DPIS=('mdpi' 'hdpi' 'xhdpi' 'xxhdpi')
# Variants.
readonly -a NET_VARS=('light' 'dark' 'win9')
# Output path.
readonly NET_OUT="${ews[base]}"'/../../release/netronic/themes'
# Output prefix.
readonly NET_PRE='Netronic'

# For use with Sass.
declare -a netArgs
# For use in iterations.
IFS=' '

NET.die() {
  (( ${#} )) && echo "${@}" 1>&2
  exit 1
}

type 'sass' &> /dev/null || NET.die '`sass` not found.'

NET.test() {
  [ -e "${1}" ] || NET.die "${1}"': Not found.'
  [ -f "${1}" ] || NET.die "${1}"': Not a regular file.'
  [ -r "${1}" ] || NET.die "${1}"': No read permission.'
}

echo -e "${ews[name]}"' '"${ews[sign]}"'\n\nWorking directory:\n  '"$(pwd)"'
Output path:\n  '"${NET_OUT}"'\nOutput prefix:\n  '"${NET_PRE}"
echo 'Preparing.'
for netIdx in $(eval echo "{0..$(( ${#NET_VARS[@]} - 1 ))}"); do
  netVar="${NET_VARS[${netIdx}]}"
  for netJdx in $(eval echo "{0..$(( ${#NET_DPIS[@]} - 1 ))}"); do
    netDpi="${NET_DPIS[${netJdx}]}"
    netSuf=
    (( netJdx )) && netSuf+='-'"${netDpi}"
    (( netIdx )) && netSuf+='-'"${netVar}"
    (( ${#netSuf} )) && {
      netInp="${netSuf:1}" || :
    } || netInp="${netVar}"
    for netPla in 'gtk-3.0' 'gtk-4.0' 'xfce-notify-4.0'; do
      netItm="${ews[base]}"'/'"${netPla}"'/'"${netInp}"'.scss'
      NET.test "${netItm}"
      netArgs+=("${netItm}"':'"${NET_OUT}"'/'"${NET_PRE}""${netSuf}"'/'"${netPla}"'/gtk.css')
    done
  done
done
echo 'Now building.'
sass --update --no-source-map --stop-on-error "${netArgs[@]}" || NET.die
echo 'Done.'
