
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export IBUS_COMPONENT_PATH=$HOME/.nix-profile/share/ibus/component

export PATH=$PATH:$HOME/Android/Sdk/build-tools:$HOME/Android/Sdk/platform-tools

kmonad ~/.config/kmonad/config.kbd &
