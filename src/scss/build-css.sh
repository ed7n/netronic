#!/bin/env bash

{
  declare -p ews || declare -Ax ews=([base]="${0%/*}" [exec]="${0}" \
      [name]='Netronic GTK3 Themes Builder' [sign]='by Brendon, 07/25/2022.')
} &> /dev/null

# Base output filename.
ews[bon]='Netronic'
# Base output path.
ews[bop]="${ews[base]}"'/../../release/netronic/themes'
# Primary DPI.
ews[ddi]='mdpi'
# Primary variant.
ews[dva]='light'
# Secondary DPIs and variants.
declare -ar NTB_DPIS=('hdpi' 'xhdpi' 'xxhdpi') \
    NTB_VARS=('dark' 'win9')
declare -a ntbArgs

echo -e "${ews[name]}"' '"${ews[sign]}"'\n'
ews[bop]="${ews[bop]%/}"
IFS=' '
echo 'Preparing.'
for ntbVar in '' ${NTB_VARS[*]}; do
  ews[var]="${ntbVar:-${ews[dva]}}"
  for ntbDpi in '' ${NTB_DPIS[*]}; do
    ews[dpi]="${ntbDpi:-${ews[ddi]}}"
    ews[out]=''
    [ "${ntbDpi}" ] && ews[out]="${ews[out]}"'-'"${ntbDpi}"
    [ "${ntbVar}" ] && ews[out]="${ews[out]}"'-'"${ntbVar}"
    [ "${ews[out]}" ] && ews[inp]="${ews[out]:1}"
    for ntbPlf in 'gtk-3.0' 'xfce-notify-4.0'; do
      ntbArgs["${#ntbArgs[*]}"]="${ews[base]}"'/'"${ntbPlf}"'/'"${ews[inp]:-${ews[var]}}"'.scss:'"${ews[bop]}"'/'"${ews[bon]}""${ews[out]}"'/'"${ntbPlf}"'/gtk.css'
    done
  done
done
echo 'Now building.'
sass --update --no-source-map --stop-on-error ${ntbArgs[*]} || exit
echo 'Done.'
