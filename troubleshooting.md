# Troubleshooting

these instructions are for the various problems people have run into


# I power cycle the robot and the LED button to calibrate is not turning on
* 1st resolution reinstall the firmware in itsybitsy
* If that does not work contact a lab manager/ lab assistant

# I power cycle the robot and calibrate, but motor is not running
* One or all the motors are mostly damaged and you need to replace it.
* Please contact a lab manager/lab assistant

# I get a "Device Could Not Be Opened" Error message
* You will need to modify your `udev` rules
* First check if you have these rules. 
  * Do so by running `sudo ls /etc/udev/rules.d/`. 
  * If you do not see a a file called `81-neuronrobotics.rules` here then proceed. 
  * If you do see that file than it is probably something else that is causing your problem.
* Copy / create the file `81-neuronrobotics.rules` in `/etc/udev/rules.d/`
  * Run: `sudo nano /etc/udev/rules.d/81-neuronrobotics.rules`
    * Then copy the contents `81-neuronrobotics.rules` from this repo.
  * Or copy from your downloads by running: `sudo cp 81-neuronrobotics.rules /etc/udev/rules.d/81-neuronrobotics.rules`
* Then run `sudo udevadm trigger`

