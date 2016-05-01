#!/bin/sh
function usage()
{
    echo "Some Find and Replace action to make a new dropwizard service real quick."
    echo ""
    echo "Moves Packages around and renames classes."
    echo ""
    echo "Usage:"
    echo "\t./createNamedService.sh [options]"
	echo ""
    echo "Example:"
    echo "\t./createNamedService.sh -l widgetotron -u Widgetotron -t org -o example"
	echo ""
    echo "Options:"
	echo "\t-l, --lowercase"
	echo "\t-u, --uppercase"
	echo "\t-t, --tld"
	echo "\t-o, --orgnisation"
    echo "\t-h, --help\t Display this help text"
    echo ""
}

if [ $# -eq 0 ]
  then
    usage
    exit
fi

while [[ $# > 1 ]]
do
key="$1"

case $key in
	-h | --help)
	usage
	exit
	;;
	-l | --lowercase)
	LOWERCASE="$2"
	shift # past argument
	;;
	-u | --uppercase)
	UPPERCASE="$2"
	shift # past argument
	;;
	-t | --tld)
	TLD="$2"
	shift # past argument
	;;
	-o | --orgnisation)
	ORGANISATION="$2"
	shift # past argument
	;;			
    *)
		# unknown option
		echo "ERROR: unknown parameter \"$PARAM\""
		usage
		exit 1            
    ;;
esac
shift # past argument or value
done

mv dropgradle-service/ $LOWERCASE-service/
mv $LOWERCASE-service/src/main/java/pro $LOWERCASE-service/src/main/java/$TLD
mv $LOWERCASE-service/src/main/java/$TLD/pengin $LOWERCASE-service/src/main/java/$TLD/$ORGANISATION
find . -depth -name "*dropgradle*" -execdir sh -c 'mv {} $(echo {} | sed "s/dropgradle/'$LOWERCASE'/")' \;
find . -depth -name "*Dropgradle*" -execdir sh -c 'mv {} $(echo {} | sed "s/Dropgradle/'$UPPERCASE'/")' \;
find . -type f \( -name '*.scala' -o -name '*.java' -o -name 'go' -o -name '*.gradle' -o -name '*.yml' \) | xargs sed -i '' "s/dropgradle/$LOWERCASE/g;s/Dropgradle/$UPPERCASE/g;s/pro\.pengin/$TLD\.$ORGANISATION/g"

echo ' ______'
echo '< Done >'
echo ' ------'
echo '        \   ^__^'
echo '         \  (oo)\_______'
echo '            (__)\       )\/\'
echo '                ||----w |'
echo '                ||     ||'