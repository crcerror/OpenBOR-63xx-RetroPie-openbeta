# OpenBOR-63xx-RetroPie-openbeta
Openbeta for OpenBOR on RetroPie

Version History

02.05.2019
Added Dmitri
This is OpenBOR binary compiled on Raspbery
based on [OpenBOR Relaease 01.05.2019](https://github.com/DCurrent/openbor/tree/02375fbcd9c3848045dd7d11819542e83ae46cb1)

09.06.2019
Added libGL.so.1 for raspberry pi zero setups

# To install make following:

Enter SSH terminal and type follwing text to choose following versions:

1.1 To restore original OpenBOR script:
    
    wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor.sh -O /home/pi/RetroPie-Setup/scriptmodules/ports/openbor.sh
    
1.2 For version 3400 with CLI support:

    wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-3400.sh -O /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-3400.sh

1.3.1 For newest branch 6510 for RPi 4B:

    wget https://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-6xxx-RPi4/openbor-v6510-RPi4.sh -O- | tr -d '\r' > /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-v6510-RPi4.sh

1.3.2 For newest branch 6510 for RPi 3B/3B+:

    wget https://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-6xxx-RPi3/openbor-v6510-RPi3.sh -O- | tr -d '\r' > /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-v6510-RPi3.sh

1.3.3 For newest branch 6510 for RPi 0/1:

    wget https://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-6xxx-RPizero/openbor-v6510-RPi0.sh -O- | tr -d '\r' > /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-v6510-RPi0.sh


Go to ES and select Configuration (the RetroJoy), select RetroPie Setup or just type sudo ~/RetroPie-Setup/retropie_setup.sh

On blue dialog, navigate to P Manage packages

Select exp Manage experimental packages

Run down the list, there select the fitting opbenbor (it's is a number around 300+)

Select S Install from source

Restart ES!!

Now go to ports menu and start the OpenBOR-script!

Enjoy

# Obtain PAK files

Go to the official forum CHRONOCRASH and get newest PAK version directly from the several authors.

Use one of the several gamedatabase like here to obtain some modules.

After downloading put them to your ROM directory ports/openbor

You can participate into thread OpenBOR modules we like and add your favourtite modules there.

# How to compile GL4ES if you need

If you don't have a raspberry based system you need to compile libGL.so.1 and place next to the OpenBOR binary executable. The GL4ES wrapper can be found at https://github.com/ptitSeb/gl4es and some flags to compile on your system can be found in USAGE.md file. Additionally COMPILE.md contains the commands to compile depending your system.

https://retropie.org.uk/forum/topic/19326/openbor-6xxx-openbeta-testphase
