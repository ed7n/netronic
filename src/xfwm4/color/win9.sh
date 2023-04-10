#!/usr/bin/env bash

NET.def() {
  local \
      color='#0f0f0f' \
      colorControls='#d4d0c8'
      colorControlsLight='#e9e7e3' \
      colorControlsShadow='#5f5f5f'
  colorButtonActive="${color}"
  colorButtonActiveBackground="${colorControls}"
  colorButtonActiveBorderTop="${colorControlsLight}"
  colorButtonActiveBorderLeft="${colorControlsLight}"
  colorButtonActiveBorderRight="${colorControlsShadow}"
  colorButtonActiveBorderBottom="${colorControlsShadow}"
  colorButtonInactive="${color}"
  colorButtonInactiveBackground="${colorControls}"
  colorButtonInactiveBorderTop="${colorControlsLight}"
  colorButtonInactiveBorderLeft="${colorControlsLight}"
  colorButtonInactiveBorderRight="${colorControlsShadow}"
  colorButtonInactiveBorderBottom="${colorControlsShadow}"
  colorButtonPrelight="${color}"
  colorButtonPrelightBackground='#e9e7e3'
  colorButtonPrelightBorderTop="${colorControlsLight}"
  colorButtonPrelightBorderLeft="${colorControlsLight}"
  colorButtonPrelightBorderRight="${colorControlsShadow}"
  colorButtonPrelightBorderBottom="${colorControlsShadow}"
  colorButtonPressed="${color}"
  colorButtonPressedBackground='#bfb9ad'
  colorButtonPressedBorderTop="${colorControlsShadow}"
  colorButtonPressedBorderLeft="${colorControlsShadow}"
  colorButtonPressedBorderRight="${colorControlsLight}"
  colorButtonPressedBorderBottom="${colorControlsLight}"
  colorButtonToggledActive="${color}"
  colorButtonToggledActiveBackground="${colorButtonPressedBackground}"
  colorButtonToggledActiveBorderTop="${colorControlsShadow}"
  colorButtonToggledActiveBorderLeft="${colorControlsShadow}"
  colorButtonToggledActiveBorderRight="${colorControlsLight}"
  colorButtonToggledActiveBorderBottom="${colorControlsLight}"
  colorButtonToggledInactive="${color}"
  colorButtonToggledInactiveBackground="${colorButtonPressedBackground}"
  colorButtonToggledInactiveBorderTop="${colorControlsShadow}"
  colorButtonToggledInactiveBorderLeft="${colorControlsShadow}"
  colorButtonToggledInactiveBorderRight="${colorControlsLight}"
  colorButtonToggledInactiveBorderBottom="${colorControlsLight}"
  colorButtonToggledPrelight="${color}"
  colorButtonToggledPrelightBackground="${colorButtonPressedBackground}"
  colorButtonToggledPrelightBorderTop="${colorControlsShadow}"
  colorButtonToggledPrelightBorderLeft="${colorControlsShadow}"
  colorButtonToggledPrelightBorderRight="${colorControlsLight}"
  colorButtonToggledPrelightBorderBottom="${colorControlsLight}"
  colorButtonToggledPressed="${color}"
  colorButtonToggledPressedBackground="${colorButtonPressedBackground}"
  colorButtonToggledPressedBorderTop="${colorControlsShadow}"
  colorButtonToggledPressedBorderLeft="${colorControlsShadow}"
  colorButtonToggledPressedBorderRight="${colorControlsLight}"
  colorButtonToggledPressedBorderBottom="${colorControlsLight}"
  colorWindowActiveTitlebar="${color}"
  colorWindowActiveTitlebarBackground='#939fbe'
  colorWindowActiveBorderTitle="${colorControls}"
  colorWindowActiveBorderTop="${colorControlsLight}"
  colorWindowActiveBorderLeft="${colorControlsLight}"
  colorWindowActiveBorderRight="${colorControlsShadow}"
  colorWindowActiveBorderBottom="${colorControlsShadow}"
  colorWindowInactiveTitlebar='#6a6864'
  colorWindowInactiveTitlebarBackground='#bfbfbf'
  colorWindowInactiveBorderTitle="${colorControls}"
  colorWindowInactiveBorderTop="${colorControlsLight}"
  colorWindowInactiveBorderLeft="${colorControlsLight}"
  colorWindowInactiveBorderRight="${colorControlsShadow}"
  colorWindowInactiveBorderBottom="${colorControlsShadow}"
}

NET.def
