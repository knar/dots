# Config files for my x240

### Usage
```
stow home
```

### Caveats
To start the x server with the modesetting driver I followed the steps outline for Intel Graphics under [this section in the Arch Wiki](https://wiki.archlinux.org/index.php/kernel_mode_setting#Early_KMS_start)

Create `/etc/udev/rules.d/backlight.rules`to allow the brightness script to write to the brightness file:
```
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/bin/chgrp wheel /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
```

Create `/etc/X11/xorg.conf.d/30-touchpad.conf` for touchpad settings:
```
Section "InputClass"
	Identifier "Touchpad"
	MatchIsTouchpad "on"
	Driver "libinput"
	Option "Tapping" "on"
	Option "NaturalScrolling" "true"
	Option "AccelProfile" "flat"
EndSection
```
