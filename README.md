# Netronic

[[**Homepage**](https://ed7n.github.io/netronic)]

## Building

    $ src/scss/build.sh && src/xfwm4/build.sh

### Handy dark scheme workaround

    $ pushd release/netronic/themes && for netSuf in '-dark' '-hdpi-dark' '-mhdpi-dark' '-xhdpi-dark' '-xxhdpi-dark'; do ln -s 'Netronic'"${netSuf}" 'Netronic'"${netSuf}"'en'; done && popd
