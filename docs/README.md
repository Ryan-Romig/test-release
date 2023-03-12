# Flashing Syryn Cast (project opal)
---
#### [See bottom for download links](https://github.com/Ryan-Romig/opal-test-release/blob/main/docs/README.md#Files)
---
### Flashing Tool used is ESP-PROG from espressif used with the TAG-Connect cable
* [ESP Programmer [ESP-PROG]](https://www.digikey.com/en/products/detail/espressif-systems/ESP-PROG/10259352?s=N4IgTCBcDaIKIGUAKBaJAnA9gcwAQCNMBDdAExAF0BfIA)
* [Cable[ Tag Connect tc2030-idc-nl-10-6]](https://www.tag-connect.com/product/tc2030-idc-nl-10-6-pin-plug-of-nails-spring-pin-cable-with-0-1-ribbon-connector-10-version)
   * retainer clip for cable
   [Retainer [Tag Connect tc2030-retaining-clip ] ](https://www.tag-connect.com/product/tc2030-retaining-clip-board-3-pack)

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
        ```
        set /p "id=Enter COM port: "
        ```
        and replace with 
        ```
        set /A id=COMX
        ```        
        where ```COMX``` is the correct ```COM``` port on your machine.
        ![flash.bat_example](/docs/assets/flash.PNG)
    * Here is example of successful output after flashing
    ![example](/docs/assets/example.PNG)

# Notes
* Make sure power jumper is in correct spot. 3.3V or 5.0V are both okay.
  * ![jumper_image](/docs/assets/jumper_image.png)
* Wi-Fi will broadcast an Access Point with SSID of ```Underwater Audio```
* White LED will blink in a pattern of 2 slow, 2 fast, pause 2 seconds and repeat after Wi-Fi AP sucessfully starts
* Audio will play from the headphone jack saying ``"power on"`` every 3 seconds.  
* LED will light solid when any button is pressed

#### Files
* [Firmware Download Package](https://github.com/Ryan-Romig/opal-test-release/releases/latest/download/underwater-audio-test.zip)
* [Demo Video Download](https://github.com/Ryan-Romig/opal-test-release/releases/latest/download/DEMO.mp4)
* [Images Viewing](https://github.com/Ryan-Romig/opal-test-release/releases/latest)

Underwater Audio is an extremely poorly managed and incompetent company and cannot seem to provide empoyees with proper tools for them to complete their job. I completed this for them, on my own PERSONAL time in order to meet a short deadline (i was given minimal notice to compete this on top of my already slammed work load)  
Thus, This repo had to be stored on my PERSONAL account and is subject to be removed without notice as it is only active out of curtosy. ( regardless of being fired without notice or reason, and taping my last paycheck to the outside door and telling me to 'come get it' ) 
