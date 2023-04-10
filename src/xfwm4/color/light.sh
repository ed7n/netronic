#!/usr/bin/env bash

NET.def() {
  local \
      color='#0f0f0f' \
      colorAccentHigh='#4f4f4f' \
      colorAccentHighDent='#575757' \
      colorAccentLow='#afafaf' \
      colorAccentLowBump='#a7a7a7' \
      colorAccentMin='#dfdfdf'
  colorButtonActive="${color}"
  colorButtonActiveBackground="${colorAccentMin}"
  colorButtonActiveBorderTop="${colorAccentLow}"
  colorButtonActiveBorderLeft="${colorAccentLow}"
  colorButtonActiveBorderRight="${colorAccentHigh}"
  colorButtonActiveBorderBottom="${colorAccentHigh}"
  colorButtonInactive="${colorAccentHigh}"
  colorButtonInactiveBackground="${colorAccentMin}"
  colorButtonInactiveBorderTop="${colorAccentLowBump}"
  colorButtonInactiveBorderLeft="${colorAccentLowBump}"
  colorButtonInactiveBorderRight="${colorAccentHighDent}"
  colorButtonInactiveBorderBottom="${colorAccentHighDent}"
  colorButtonPrelight="${color}"
  colorButtonPrelightBackground='#ababe3'
  colorButtonPrelightBorderTop="${colorAccentLow}"
  colorButtonPrelightBorderLeft="${colorAccentLow}"
  colorButtonPrelightBorderRight="${colorAccentHigh}"
  colorButtonPrelightBorderBottom="${colorAccentHigh}"
  colorButtonPressed="${color}"
  colorButtonPressedBackground='#abe3ab'
  colorButtonPressedBorderTop="${colorAccentHigh}"
  colorButtonPressedBorderLeft="${colorAccentHigh}"
  colorButtonPressedBorderRight="${colorAccentLow}"
  colorButtonPressedBorderBottom="${colorAccentLow}"
  colorButtonToggledActive="${color}"
  colorButtonToggledActiveBackground="${colorButtonPressedBackground}"
  colorButtonToggledActiveBorderTop="${colorAccentHigh}"
  colorButtonToggledActiveBorderLeft="${colorAccentHigh}"
  colorButtonToggledActiveBorderRight="${colorAccentLow}"
  colorButtonToggledActiveBorderBottom="${colorAccentLow}"
  colorButtonToggledInactive="${colorAccentHigh}"
  colorButtonToggledInactiveBackground="${colorButtonPressedBackground}"
  colorButtonToggledInactiveBorderTop="${colorAccentHighDent}"
  colorButtonToggledInactiveBorderLeft="${colorAccentHighDent}"
  colorButtonToggledInactiveBorderRight="${colorAccentLowBump}"
  colorButtonToggledInactiveBorderBottom="${colorAccentLowBump}"
  colorButtonToggledPrelight="${color}"
  colorButtonToggledPrelightBackground="${colorButtonPressedBackground}"
  colorButtonToggledPrelightBorderTop="${colorAccentHigh}"
  colorButtonToggledPrelightBorderLeft="${colorAccentHigh}"
  colorButtonToggledPrelightBorderRight="${colorAccentLow}"
  colorButtonToggledPrelightBorderBottom="${colorAccentLow}"
  colorButtonToggledPressed="${color}"
  colorButtonToggledPressedBackground="${colorButtonPressedBackground}"
  colorButtonToggledPressedBorderTop="${colorAccentHigh}"
  colorButtonToggledPressedBorderLeft="${colorAccentHigh}"
  colorButtonToggledPressedBorderRight="${colorAccentLow}"
  colorButtonToggledPressedBorderBottom="${colorAccentLow}"
  colorWindowActiveTitlebar="${color}"
  colorWindowActiveTitlebarBackground="${colorAccentMin}"
  colorWindowActiveBorderTitle="${colorAccentLow}"
  colorWindowActiveBorderTop="${colorAccentLow}"
  colorWindowActiveBorderLeft="${colorAccentLow}"
  colorWindowActiveBorderRight="${colorAccentHigh}"
  colorWindowActiveBorderBottom="${colorAccentHigh}"
  colorWindowInactiveTitlebar="${colorAccentHigh}"
  colorWindowInactiveTitlebarBackground="${colorAccentMin}"
  colorWindowInactiveBorderTitle="${colorAccentLow}"
  colorWindowInactiveBorderTop="${colorAccentLow}"
  colorWindowInactiveBorderLeft="${colorAccentLow}"
  colorWindowInactiveBorderRight="${colorAccentLow}"
  colorWindowInactiveBorderBottom="${colorAccentLow}"
}

NET.def
