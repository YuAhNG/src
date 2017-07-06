echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="0042", MODE:="0777", GROUP:="dialout",  SYMLINK+="usb_chassis"' >/etc/udev/rules.d/usb_chassis.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", MODE:="0777", GROUP:="dialout",  SYMLINK+="usb_sensors"' >/etc/udev/rules.d/usb_sensors.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE:="0777", GROUP:="dialout",  SYMLINK+="usb_imu"' >/etc/udev/rules.d/usb_imu.rules
service udev reload
sleep 2
service udev restart
