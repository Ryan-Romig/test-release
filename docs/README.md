# Flashing Syryn Cast (project opal)
---
Download Files
[Firmware_download](https://github.com/Ryan-Romig/opal-test-release/files/9954225/underwater-audio-test.zip)
[Demo Flashing Video]([https://objects.githubusercontent.com/github-production-release-asset-2e65be/563001662/9125b424-94a5-437a-ab45-cbda25d43c64?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20221107%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221107T175448Z&X-Amz-Expires=300&X-Amz-Signature=2bfca3fbf7693c810e90eb082787f292894c1dc4b6237f17e0355d6eeb24dcfe&X-Amz-SignedHeaders=host&actor_id=46287392&key_id=0&repo_id=563001662&response-content-disposition=attachment%3B%20filename%3DDEMO.mp4&response-content-type=application%2Foctet-stream](https://github.com/Ryan-Romig/opal-test-release/releases/download/v0.0.1/DEMO.mp4))
[see release for more images](https://github.com/Ryan-Romig/opal-test-release/releases/tag/v0.0.1)
---

## Setup Enviroment
1. ### Install Python 3
    * [Download Python installer for Windows x64](https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe)
    * Run the python installer. make sure to check the "Add python.exe to PATH" checkbox 
        * ![python_install](/docs/assets//python_install.PNG)

2. ### Install esptool with pip (pip is included when python is installed)
    * this is installed when running the flash.bat script. 
    * it can manually be installed by opening command promt and running command 
    ```cmd
    pip install esptool
## Flashing
1. ### Install flashing Cable into PCB
    * Place cable on side without chips so the pins connect to the pads on the PCB
        ![](/docs/assets/)
2. ### Determine Com Port
    * open Device Manager and look under COM port. Remember COM ports
        * Device Disconnected
        ![com_before](/docs/assets/com_before.PNG)
    * Connect flashing device tool and Look at Device Manager Notice new COM ports
        * Device Connected
        ![com_after](/docs/assets/com_after.PNG)
    * The correct COM port is the higher valued com port. for this example, COM4 is the correct port. 

3. ### Run flash.bat and enter the correct COM port when asked.
Once the COM port is determined working you can edit the flash.bat file to know your COM port instead of asked every time like this : 
    * remove line 1 that reads 
        ```txt
        set /p "id=Enter COM port: "
        ```
        and replace with 
        ```txt
        set /A id=COMX
        ```        
        where ```COMX``` is the correct ```COM``` port on your machine.
        ![flash.bat_example](/docs/assets/flash.PNG)
    * Here is example of successful output after flashing
    ![example](/docs/assets/example.PNG)

# Notes
* Make sure power jumper is in correct spot. 3.3V or 5.0V are both okay.
    ![jumper_image](/docs/assets/jumper_image.png)
* Blue LED will blink in a pattern of 2 slow, 2 fast, pause 2 seconds and repeat when
* Wi-Fi will broadcast an Access Point with SSID of ```Underwater Audio```
* Audio will play from the headphone jack saying ``"power on"`` every 3 seconds.  
* LED will light solid when any button is pressed


