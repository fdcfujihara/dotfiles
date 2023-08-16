function config_touchpad
    for dev in (xinput list | grep -iP 'mouse|touchpad' | grep -oP '(?<=id=)\d+')
        ## View all props: xinput list-props $dev
        xinput set-prop $dev 'libinput Tapping Enabled' 1
        xinput set-prop $dev 'libinput Natural Scrolling Enabled' 1
        xinput set-prop $dev 'libinput Accel Speed' 0.7
    end
end
