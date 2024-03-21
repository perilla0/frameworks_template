#!/bin/bash
cd `dirname $0`
cd ../../

for filename in ./script/init/build.services/*.sh
do
    echo '#------------------------------------------------------------------------------------'
    echo '# filename:' ${filename}
    echo '#------------------------------------------------------------------------------------'
    bash ${filename}
done