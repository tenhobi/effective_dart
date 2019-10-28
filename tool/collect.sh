#!/bin/bash

# uses https://github.com/ericchiang/pup

SCRIPT=`realpath -s $0`
SCRIPTPATH=`dirname $SCRIPT`

declare -A PAGES=( ['style']='https://dart.dev/guides/language/effective-dart/style' ['documentation']='https://dart.dev/guides/language/effective-dart/documentation' ['usage']='https://dart.dev/guides/language/effective-dart/usage' ['design']='https://dart.dev/guides/language/effective-dart/design')

TYPES=('do' 'dont' 'prefer' 'avoid')
IGNORES='^()$'
OUTPUT_FILE=$SCRIPTPATH'/analysis_options.new.yaml'

echo 'linter:' > $OUTPUT_FILE
echo '  rules:' >> $OUTPUT_FILE

for page_key in "${!PAGES[@]}"
do
    echo "GENERATING page ${PAGES[$page_key]}"

    if [ $page_key != 'style' ]
    then
        echo -e "" >> $OUTPUT_FILE
    fi
    echo "    # ${page_key^^}" >> $OUTPUT_FILE

    html_data=$(curl --silent "${PAGES[$page_key]}")
    for type in "${TYPES[@]}"
    do
        echo $html_data | pup '[id^="'"$type"'-"] + .linter-rule a text{}' | sed 's/,//' | sort -u | awk -v comment="$type" -v pat="$IGNORES" '
        $0 !~ pat {            
            print "    - " $0 " # " comment
        }
        ' >> $OUTPUT_FILE
    done
done
