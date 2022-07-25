#!/bin/env bash

{
  declare -p ews || declare -Ax ews=([base]="${0%/*}" [exec]="${0}" \
      [name]='Netronic Xfwm4 Theme Builder' [sign]='by Brendon, 07/25/2022.')
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
declare -ar NTB_DPIS=('mhdpi' 'hdpi' 'xhdpi' 'xxhdpi') \
    NTB_VARS=('dark' 'win9')

run() {
  local ntbInp="${1}" ntbOut="${2}"
  shift 2
  echo -en "${ntbOut}"'\r'
  . "${ews[inp]}"/"${ntbInp}".sh "${@}" > "${ews[out]}"/"${ntbOut}" || exit
  echo -en '\r'"${ntbOut//?/ }"'\r'
}

wrt() {
  local ntbStu
  echo 'Writing `'"${ews[var]}"'-'"${ews[dpi]}"'`.'
  mkdir -p "${ews[out]}" || exit
  for ntbSte in 'active' 'inactive'; do
    ntbStu="${ntbSte@u}"
    local -n \
        ntbCtb='colorWindow'"${ntbStu}"'TitlebarBackground' \
        ntbCbi='colorWindow'"${ntbStu}"'BorderTitle' \
        ntbCbt='colorWindow'"${ntbStu}"'BorderTop' \
        ntbCbb='colorWindow'"${ntbStu}"'BorderBottom'
    for ntbNum in '1' '2' '3' '4' '5'; do
      run 'top' 'title-'"${ntbNum}"'-'"${ntbSte}"'.xpm' "${ntbCtb}" \
          "${ntbCbi}" "${ntbCbt}"
    done
    run 'bottom' 'bottom-'"${ntbSte}"'.xpm' "${ntbCbb}"
    for ntbSde in 'left' 'right'; do
      local -n ntbCsd='colorWindow'"${ntbStu}"'Border'"${ntbSde@u}"
      run 'sides' "${ntbSde}"'-'"${ntbSte}"'.xpm' "${ntbCsd}"
      run 'top''-'"${ntbSde}" 'top-'"${ntbSde}"'-'"${ntbSte}"'.xpm' \
          "${ntbCtb}" "${ntbCbi}" "${ntbCbt}" "${ntbCsd}"
      run 'bottom-'"${ntbSde}" 'bottom-'"${ntbSde}"'-'"${ntbSte}"'.xpm' \
          "${ntbCbb}" "${ntbCsd}"
    done
  done
  for ntbSte in 'active' 'inactive' 'prelight' 'pressed'; do
    ntbStu="${ntbSte@u}"
    local -n \
        ntbCfg='colorButton'"${ntbStu}" \
        ntbCbg='colorButton'"${ntbStu}"'Background' \
        ntbCbt='colorButton'"${ntbStu}"'BorderTop' \
        ntbCbl='colorButton'"${ntbStu}"'BorderLeft' \
        ntbCbr='colorButton'"${ntbStu}"'BorderRight' \
        ntbCbb='colorButton'"${ntbStu}"'BorderBottom'
    for ntbBtn in 'close' 'hide' 'maximize' 'shade' 'stick'; do
      run "${ntbBtn}" "${ntbBtn}"'-'"${ntbSte}"'.xpm' "${ntbCfg}" "${ntbCbg}" \
          "${ntbCbt}" "${ntbCbl}" "${ntbCbr}" "${ntbCbb}"
    done
    case "${ntbSte}" in
      'prelight' | 'pressed' )
        local ntbCfg="${ntbCbg}" ;;&
      'active' | 'prelight' | 'pressed' )
        local ntbCbg="${colorWindowActiveTitlebarBackground}" ;;
      'inactive' )
        local ntbCbg="${colorWindowInactiveTitlebarBackground}" ;;
      * )
        echo 'Bad ${ntbSte}: '"${ntbSte}"
        exit 1 ;;
    esac
    run 'menu' 'menu-'"${ntbSte}"'.xpm' "${ntbCfg}" "${ntbCbg}"
    local -n \
        ntbCfg='colorButtonToggled'"${ntbStu}" \
        ntbCbg='colorButtonToggled'"${ntbStu}"'Background' \
        ntbCbt='colorButtonToggled'"${ntbStu}"'BorderTop' \
        ntbCbl='colorButtonToggled'"${ntbStu}"'BorderLeft' \
        ntbCbr='colorButtonToggled'"${ntbStu}"'BorderRight' \
        ntbCbb='colorButtonToggled'"${ntbStu}"'BorderBottom'
    for ntbBtn in 'maximize' 'shade' 'stick'; do
      run "${ntbBtn}" "${ntbBtn}"'-toggled-'"${ntbSte}"'.xpm' "${ntbCfg}" \
          "${ntbCbg}" "${ntbCbt}" "${ntbCbl}" "${ntbCbr}" "${ntbCbb}"
    done
  done
  run 'themerc' 'themerc' "${colorWindowActiveTitlebar}" \
      "${colorWindowInactiveTitlebar}"
}

echo -e "${ews[name]}"' '"${ews[sign]}"'\n'
ews[bop]="${ews[bop]%/}"
IFS=' '
for ntbVar in '' ${NTB_VARS[*]}; do
  ews[var]="${ntbVar:-${ews[dva]}}"
  echo 'Reading `'"${ews[var]}"'`.'
  . "${ews[base]}"/color/"${ews[var]}".sh || exit
  for ntbDpi in '' ${NTB_DPIS[*]}; do
    ews[dpi]="${ntbDpi:-${ews[ddi]}}"
    ews[inp]="${ews[base]}"'/dpi/'"${ews[dpi]}"
    ews[out]=''
    [ "${ntbDpi}" ] && ews[out]="${ews[out]}"'-'"${ntbDpi}"
    [ "${ntbVar}" ] && ews[out]="${ews[out]}"'-'"${ntbVar}"
    ews[out]="${ews[bop]}"'/'"${ews[bon]}""${ews[out]}"'/xfwm4'
    wrt
  done
done
echo 'Done.'
