# Micropython
Micropython tools:
- **pyterm** opens picocom on a connected Micropython device
- **pyload** loads a Python file on a connected Micropython device
- **pyrshell** lauches rshell on a connected Micropython device

When no Micropython device is found, information about the available serial ports is displayed.

When several Micropython devices are found, the first one is chosen, but information about the other devices is displayed.

For each command, it is possible to connect to a specific device by giving its path on the command line.

I have written a Pyboard/ESP32 tutorial in French for my students:
<https://wdi.centralesupelec.fr/boulanger/MicroPython/TutorialPyboard>
