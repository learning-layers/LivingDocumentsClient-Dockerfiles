#!/bin/bash
cd /app

# LDC config
sudo echo 'BEGIN Overwriting configuration variables'
if [ -n "${LDC_DOCUMENT_DOMAIN}" ]; then
  sed -i "s#global.document.domain = \"LDC_DOCUMENT_DOMAIN\";#global.document.domain = \"${LDC_DOCUMENT_DOMAIN}\";#g" ./index.html
else
  sed -i "s#global.document.domain = \"LDC_DOCUMENT_DOMAIN\";##g" ./index.html
fi

sed -i "s#LDS_API_PROTOCOL#${LDS_API_PROTOCOL}#g" ./index.html
sed -i "s#LDS_API_ENDPOINT#${LDS_API_ENDPOINT}#g" ./index.html
sed -i "s#\"LDS_API_PORT\"#${LDS_API_PORT}#g" ./index.html
sudo echo 'END Overwriting configuration variables'