# OpenBOR-63xx-RetroPie-openbeta
Openbeta for OpenBOR on RetroPie

Version History

02.05.2019
Added Dmitri
This is OpenBOR binary compiled on Raspbery
based on [OpenBOR Relaease 01.05.2019](https://github.com/DCurrent/openbor/tree/02375fbcd9c3848045dd7d11819542e83ae46cb1)

09.06.2019
Added libGL.so.1 for raspberry pi zero setups

To install make following:

Enter SSH terminal and type follwing text to choose following versions:
1.1 To restore original OpenBOR script:
    
    wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor.sh -O /home/pi/RetroPie-Setup/scriptmodules/ports/openbor.sh
    
1.2 For version 3400 with CLI support:

    wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-3400.sh -O /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-3400.sh

1.3.1 For newest branch 6xxx for RPi 3 and up:

    wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-6xxx-RPi3.sh -O- | tr -d '\r' > /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-6xxx.sh

1.3.1 For newest branch 6xxx for RPi 0/1:

    wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-6xxx-RPizero.sh -O- | tr -d '\r' > /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-6xxx.sh


Go to ES and select Configuration (the RetroJoy), select RetroPie Setup or just type sudo ~/RetroPie-Setup/retropie_setup.sh
On blue dialog, navigate to P Manage packages
Select exp Manage experimental packages
Run down the list, there select the fitting opbenbor (it's is a number around 300+)
Select S Install from source
Restart ES!!
Now go to ports menu and start the OpenBOR-script!

Enjoy

https://retropie.org.uk/forum/topic/19326/openbor-6xxx-openbeta-testphase
