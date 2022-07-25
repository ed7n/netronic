#!/bin/env bash

def() {
  local \
      color='#efefef' \
      colorAccentHigh='#afafaf' \
      colorAccentHighDent='#a7a7a7' \
      colorAccentLow='#4f4f4f' \
      colorAccentLowBump='#575757' \
      colorAccentMin='#1f1f1f'
  colorButtonActive="${color}"
  colorButtonActiveBackground="${colorAccentMin}"
  colorButtonActiveBorderTop="${colorAccentHigh}"
  colorButtonActiveBorderLeft="${colorAccentHigh}"
  colorButtonActiveBorderRight="${colorAccentLow}"
  colorButtonActiveBorderBottom="${colorAccentLow}"
  colorButtonInactive="${colorAccentHigh}"
  colorButtonInactiveBackground="${colorAccentMin}"
  colorButtonInactiveBorderTop="${colorAccentHighDent}"
  colorButtonInactiveBorderLeft="${colorAccentHighDent}"
  colorButtonInactiveBorderRight="${colorAccentLowBump}"
  colorButtonInactiveBorderBottom="${colorAccentLowBump}"
  colorButtonPrelight="${color}"
  colorButtonPrelightBackground='#1a1a52'
  colorButtonPrelightBorderTop="${colorAccentHigh}"
  colorButtonPrelightBorderLeft="${colorAccentHigh}"
  colorButtonPrelightBorderRight="${colorAccentLow}"
  colorButtonPrelightBorderBottom="${colorAccentLow}"
  colorButtonPressed="${color}"
  colorButtonPressedBackground='#1a521a'
  colorButtonPressedBorderTop="${colorAccentLow}"
  colorButtonPressedBorderLeft="${colorAccentLow}"
  colorButtonPressedBorderRight="${colorAccentHigh}"
  colorButtonPressedBorderBottom="${colorAccentHigh}"
  colorButtonToggledActive="${color}"
  colorButtonToggledActiveBackground="${colorButtonPressedBackground}"
  colorButtonToggledActiveBorderTop="${colorAccentLow}"
  colorButtonToggledActiveBorderLeft="${colorAccentLow}"
  colorButtonToggledActiveBorderRight="${colorAccentHigh}"
  colorButtonToggledActiveBorderBottom="${colorAccentHigh}"
  colorButtonToggledInactive="${colorAccentHigh}"
  colorButtonToggledInactiveBackground="${colorButtonPressedBackground}"
  colorButtonToggledInactiveBorderTop="${colorAccentLowBump}"
  colorButtonToggledInactiveBorderLeft="${colorAccentLowBump}"
  colorButtonToggledInactiveBorderRight="${colorAccentHighDent}"
  colorButtonToggledInactiveBorderBottom="${colorAccentHighDent}"
  colorButtonToggledPrelight="${color}"
  colorButtonToggledPrelightBackground="${colorButtonPressedBackground}"
  colorButtonToggledPrelightBorderTop="${colorAccentLow}"
  colorButtonToggledPrelightBorderLeft="${colorAccentLow}"
  colorButtonToggledPrelightBorderRight="${colorAccentHigh}"
  colorButtonToggledPrelightBorderBottom="${colorAccentHigh}"
  colorButtonToggledPressed="${color}"
  colorButtonToggledPressedBackground="${colorButtonPressedBackground}"
  colorButtonToggledPressedBorderTop="${colorAccentLow}"
  colorButtonToggledPressedBorderLeft="${colorAccentLow}"
  colorButtonToggledPressedBorderRight="${colorAccentHigh}"
  colorButtonToggledPressedBorderBottom="${colorAccentHigh}"
  colorWindowActiveTitlebar="${color}"
  colorWindowActiveTitlebarBackground="${colorAccentMin}"
  colorWindowActiveBorderTitle="${colorAccentLow}"
  colorWindowActiveBorderTop="${colorAccentHigh}"
  colorWindowActiveBorderLeft="${colorAccentHigh}"
  colorWindowActiveBorderRight="${colorAccentLow}"
  colorWindowActiveBorderBottom="${colorAccentLow}"
  colorWindowInactiveTitlebar="${colorAccentHigh}"
  colorWindowInactiveTitlebarBackground="${colorAccentMin}"
  colorWindowInactiveBorderTitle="${colorAccentLow}"
  colorWindowInactiveBorderTop="${colorAccentHigh}"
  colorWindowInactiveBorderLeft="${colorAccentHigh}"
  colorWindowInactiveBorderRight="${colorAccentHigh}"
  colorWindowInactiveBorderBottom="${colorAccentHigh}"
}

def
