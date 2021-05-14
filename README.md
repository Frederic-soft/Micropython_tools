# Micropython tools
Micropython tools:
- **pyterm** opens picocom on a connected Micropython device
- **pyload** loads a Python file on a connected Micropython device
- **pyrshell** lauches rshell on a connected Micropython device

When no Micropython device is found, information about the available serial ports is displayed.

When several Micropython devices are found, the first one is chosen, but information about the other devices is displayed.

The device can be specified using the **--device <dev>** option (with two '-') for **pyload**, or as the argument of **pyterm** and **pyrshell**. For instance **pyload --device COM3 code.py**, or **pyterm COM3** to force the use of a pyboard connected to port COM3 on Windows.

These tools rely on rshell and picocom:
```sh
pip3 install rshell
```
```sh
apt-get install picocom
```
or:
```sh
brew install picocom
```

On Windows, **pyterm** relies on [putty](https://www.putty.org/).

The PowerShell scripts **pyterm.ps1**, **pyload.ps1**, and **pyrshell.ps1** can be used on Windows.
[This video](https://wdi.centralesupelec.fr/boulanger/downloads/MicroPython/PyboardWinX.mp4) shows how to use ```pyload``` and ```pyterm``` on Windows X.

I have written a Pyboard/ESP32 tutorial in French for my students:
<https://wdi.centralesupelec.fr/boulanger/MicroPython/TutorialPyboard>
