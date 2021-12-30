#!/bin/sh

FN_PASSWD="./passwords/passwords.txt"
FN_PREFIX="passwords_"
FN_HASH="passwods.sha256"
DN_OUTPUT="./passwords"


#echo '.'
cat ${FN_PASSWD} | grep "^\." > ${DN_OUTPUT}/${FN_PREFIX}..txt
 HASH=`cat ${DN_OUTPUT}/${FN_PREFIX}..txt | sha256sum`
 echo "${FN_PREFIX}..txt ${HASH}" >> ${DN_OUTPUT}/${FN_HASH}
