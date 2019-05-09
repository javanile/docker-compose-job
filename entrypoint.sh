#!/bin/bash

export SHIP_FILE=/tmp/ship_file_${RANDOM}.sh

echo "#!/bin/bash" > ${SHIP_FILE}
echo "set -e" >> ${SHIP_FILE}

for command in "$@"; do
    echo "$command" >> ${SHIP_FILE}
done

chmod +x ${SHIP_FILE}

${SHIP_FILE}
