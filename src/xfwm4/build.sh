#!/usr/bin/env bash

{
  declare -p ews || declare -A ews=([base]="${0%/*}" [exec]="${0}" \
      [name]='Netronic Xfwm4 Themes Builder' [sign]='by Brendon, 12/31/2022.')
} &> /dev/null

# DPIs.
readonly -a NET_DPIS=('mdpi' 'mhdpi' 'hdpi' 'xhdpi' 'xxhdpi')
# Variants.
readonly -a NET_VARS=('light' 'dark' 'win9')
# Output path.
readonly NET_OUT="${ews[base]}"'/../../release/netronic/themes'
# Output prefix.
readonly NET_PRE='Netronic'

# For use in iterations.
IFS=' '

NET.die() {
  (( ${#} )) && echo "${@}" 1>&2
  exit 1
}

NET.run() {
  local netInf="${1}" netOuf="${2}"
  shift 2
  echo -en '    '"${netOuf}"'\r'
  . "${netInd}"/"${netInf}".sh "${@}" > "${netOud}"/"${netOuf}" || NET.die
  echo -en '    '"${netOuf//?/ }"'\r'
}

NET.wrt() {
  local netStu
  mkdir -p "${netOud}" || NET.die
  for netSta in 'active' 'inactive'; do
    netStu="${netSta@u}"
    local -n \
        netCtb='colorWindow'"${netStu}"'TitlebarBackground' \
        netCbi='colorWindow'"${netStu}"'BorderTitle' \
        netCbt='colorWindow'"${netStu}"'BorderTop' \
        netCbb='colorWindow'"${netStu}"'BorderBottom'
    # Top.
    for netNum in 1 2 3 4 5; do
      NET.run 'top' 'title-'"${netNum}"'-'"${netSta}"'.xpm' \
          "${netCtb}" "${netCbi}" "${netCbt}"
    done
    # Bottom.
    NET.run 'bottom' 'bottom-'"${netSta}"'.xpm' "${netCbb}"
    # Sides.
    for netSid in 'left' 'right'; do
      local -n netCsd='colorWindow'"${netStu}"'Border'"${netSid@u}"
      NET.run 'sides' "${netSid}"'-'"${netSta}"'.xpm' \
          "${netCsd}"
      NET.run 'top''-'"${netSid}" 'top-'"${netSid}"'-'"${netSta}"'.xpm' \
          "${netCtb}" "${netCbi}" "${netCbt}" "${netCsd}"
      NET.run 'bottom-'"${netSid}" 'bottom-'"${netSid}"'-'"${netSta}"'.xpm' \
          "${netCbb}" "${netCsd}"
    done
  done
  for netSta in 'active' 'inactive' 'prelight' 'pressed'; do
    netStu="${netSta@u}"
    local -n \
        netCfg='colorButton'"${netStu}" \
        netCbg='colorButton'"${netStu}"'Background' \
        netCbt='colorButton'"${netStu}"'BorderTop' \
        netCbl='colorButton'"${netStu}"'BorderLeft' \
        netCbr='colorButton'"${netStu}"'BorderRight' \
        netCbb='colorButton'"${netStu}"'BorderBottom'
    # Titlebar buttons.
    for netBtn in 'close' 'hide' 'maximize' 'shade' 'stick'; do
      NET.run "${netBtn}" "${netBtn}"'-'"${netSta}"'.xpm' "${netCfg}" \
          "${netCbg}" "${netCbt}" "${netCbl}" "${netCbr}" "${netCbb}"
    done
    case "${netSta}" in
      'prelight' | 'pressed' )
        local -n netCfg='colorButton'"${netStu}"'Background' ;;&
      'active' | 'prelight' | 'pressed' )
        local -n netCbg='colorWindowActiveTitlebarBackground' ;;
      'inactive' )
        local -n netCbg='colorWindowInactiveTitlebarBackground' ;;
      * )
        echo 'Bad state: '"${netSta}"
        exit 1 ;;
    esac
    # Titlebar menu button.
    NET.run 'menu' 'menu-'"${netSta}"'.xpm' "${netCfg}" "${netCbg}"
    local -n \
        netCfg='colorButtonToggled'"${netStu}" \
        netCbg='colorButtonToggled'"${netStu}"'Background' \
        netCbt='colorButtonToggled'"${netStu}"'BorderTop' \
        netCbl='colorButtonToggled'"${netStu}"'BorderLeft' \
        netCbr='colorButtonToggled'"${netStu}"'BorderRight' \
        netCbb='colorButtonToggled'"${netStu}"'BorderBottom'
    # Toggled titlebar buttons.
    for netBtn in 'maximize' 'shade' 'stick'; do
      NET.run "${netBtn}" "${netBtn}"'-toggled-'"${netSta}"'.xpm' "${netCfg}" \
          "${netCbg}" "${netCbt}" "${netCbl}" "${netCbr}" "${netCbb}"
    done
  done
  NET.run 'themerc' 'themerc' "${colorWindowActiveTitlebar}" \
      "${colorWindowInactiveTitlebar}"
}

echo -e "${ews[name]}"' '"${ews[sign]}"'\n\nWorking directory:\n  '"$(pwd)"'
Output path:\n  '"${NET_OUT}"'\nOutput prefix:\n  '"${NET_PRE}"'\nNow building.'
for netIdx in $(eval echo "{0..$(( ${#NET_VARS[@]} - 1 ))}"); do
  netVar="${NET_VARS[${netIdx}]}"
  echo '  Reading `'"${netVar}"'`.'
  . "${ews[base]}"/color/"${netVar}".sh || exit
  for netJdx in $(eval echo "{0..$(( ${#NET_DPIS[@]} - 1 ))}"); do
    netDpi="${NET_DPIS[${netJdx}]}"
    netInd="${ews[base]}"'/dpi/'"${netDpi}"
    netOud="${NET_OUT}"'/'"${NET_PRE}"
    (( netJdx )) && netOud+='-'"${netDpi}"
    (( netIdx )) && netOud+='-'"${netVar}"
    netOud+='/xfwm4'
    echo '  Writing `'"${netVar}"'-'"${netDpi}"'`.'
    NET.wrt
  done
done
echo 'Done.'
