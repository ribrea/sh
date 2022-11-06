# Check if flatpack is installed 
picom -CGb 
if ! command -v picom &> /dev/null
then
	echo "picom not found, Installing"
	apt install -y picom
	picom -CGb
fi

