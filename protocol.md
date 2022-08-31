# Protocol Definition

#### Note: Timing

When you send a command, you are queuing up a packet to be sent. When you read, you are reading the most recent packet received. There is a thread in the command library that manages the sending and receiving of packets. The round trip time for a packet from the library to the device and back is at maximum 2ms, but that still creates a non-negligible delay between when you send a packet and when the response from that packet can be read. To ensure you have the latest data, you can wait 3ms between sending a request and reading. Alternately, using a state machine to manage sending and receiving prevents busy waits entirely.


## Set Motor Setpoints With Time

Set the setpoint of the Motors with interpolation. Time is in milliseconds. The interpolation mode determines the trajectory the motor takes. Positions are in degrees. 

| |ID | float |float |float |float |float |
|--- |--- | --- |--- | --- |--- | --- | 
| downstream Bytes |4 | 4 | 4 | 4 | 4 | 4 |
| Contents downstream |1848 | duration of move (ms) | interpolation mode 0=linear,1=sinusoidal | motor 1 target position | motor 2 target  position | motor 3 target  position | 
| upstream Bytes |4 | --- |
| Contents upstream |1848 | ---|

## Get Positions and Setpoint

| |ID | float| float|float | float|float |float |float|
|--- |--- | --- |--- | --- |--- | --- |  --- | --- | 
| downstream Bytes |4 | --- |--- | --- |--- | --- |  --- | --- | 
| Contents downstream |1910 | --- |
| upstream Bytes |4 | 4 | 4 |4 |4 |4 |4 |4 |
| Contents upstream |1910 | the number of motors | motor 1 Setpoint|  motor 1 position |motor 2 Setpoint | motor 2 position |motor 3 Setpoint | motor 3 position | 

## Get Velocity data

| |ID | float |float|float | float|float |float |float|float |float|float |
|--- |--- | --- | --- |--- | --- |--- | --- |  --- | --- | --- | --- |
| downstream Bytes |4 | --- |
| Contents downstream |1822 | --- |
| upstream Bytes |4 | 4 | 4 |4 |4 |4 |4 |4 |4 |4 |4 |
| Contents upstream |1822 | number of motors | motor 1 Velocity Mode Setpoint|  motor 1 velocity |motor 1 computed effort | motor 2 Velocity Mode Setpoint|  motor 2 velocity |motor 2 computed effort |motor 3 Velocity Mode Setpoint|  motor 3 velocity |motor 3 computed effort |

## Servo

Set the gripper value

NOTE: this uses one byte as the value, not a float.

| |ID | byte  |
|--- |--- | --- |
| downstream Bytes |4 | 1 |
| Contents downstream |1962 | Gripper value 0-180|
| upstream Bytes |4 | --- |
| Contents upstream |1962 |---|

