#!/bin/bash
readonly VERSION="$1"
readonly INST_DIR="$HOME"
readonly PAK_DIR="$HOME/RetroPie/roms/ports/openbor"
readonly PORTS_DIR="$HOME/RetroPie/roms/ports"

function drawline() {
echo "-------------------------------------------------------------------------"
}

# Called with argument?
[[ -z $VERSION ]] && echo "Not called with argument!" && exit

# Install dependencies
echo; echo -e "\t\tGetting dependecies";drawline
sudo apt install libsdl2-gfx-dev libvorbisidec-dev libvpx-dev
drawline; sleep 5

# Get Beta-files
echo; echo -e "\t\tGet GITHUB zip file"; drawline
cd "$INST_DIR"
wget -N -q --show-progress "http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/openbor_${VERSION}.zip"
sleep 1
# Install
echo; echo -e "\t\tUnzipping file with overwrite option"; drawline
unzip -o "openbor_${VERSION}.zip"
drawline; sleep 2

# Try to link to PAK-files
echo; echo -e "\t\tLink to PAK files"; drawline
if [[ -d $PAK_DIR ]]; then
    ln -s "${PAK_DIR}" ./openbor_openbeta/Paks
    echo "Successfully linked Pak dir"
    echo "$VERSION is making you happy"
else
    echo "Failed to link to Pak dir"
    echo "$VERSION must be feed with PAKs"
fi
drawline; sleep 5

# Try to install sh file into ports section
echo; echo -e "\t\tCreating script in ports section"; drawline
if [[ -d $PORTS_DIR ]]; then
    echo -e "#!/bin/bash\n\cd $INST_DIR\n${INST_DIR}/openbor_openbeta/OpenBOR" > "${PORTS_DIR}/OpenBOR OPENBETA.sh"
    echo "Successfully installed script file to ports dir"
    echo "Please restart ES to make it visible"
    echo "Have much fun with: OpenBOR BETA $VERSION"
else
    echo; echo "Failed to create bash script to $PORTS_DIR"
fi
drawline; sleep 3
