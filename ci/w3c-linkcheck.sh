#!/bin/bash

subject=$(git log -1 --oneline)
if [[ "$subject" != *full?linkcheck* ]]; then
    echo "No [full-linkcheck] annotation found. Exiting."
    exit 0
fi
sudo apt-get install -q  -y cpanminus
sudo cpanm install--reinstall W3C::LinkChecker
echo "Allowed_Protocols = http,https,ftp,file" > /tmp/checklink.conf
export  W3C_CHECKLINK_CFG="/tmp/checklink.conf"

checklink \
    --suppress-broken '-1:https://opencpn.org/' \
    --suppress-broken '-1:https://www.opencpn.org/flyspray/' \
    --suppress-broken '403:https://www.opencpn.org/' \
    --suppress-broken '403:https://opencpn.org/flyspray/' \
    --suppress-broken '403:https://opencpn.org/flyspray/index.php?project=0&do=index' \
    --suppress-broken '403:https://opencpn.org/OpenCPN/info/downloadplugins.html' \
    --suppress-broken '403:$dokuwiki?id=opencpn:opencpn_user_manual' \
    --suppress-broken '-1:https://cubian.org/downloads/' \
    --suppress-broken '-1:https://cubian.org/2013/08/12/enlarge-cubian-rootfs-partition/' \
    --exclude adsabs.harvard.edu \
    --exclude apple.com \
    --exclude bethandevans.com \
    --exclude bigdumboat.com \
    --exclude cruisersforum.com \
    --exclude docs.google.com \
    --exclude www.marine-knowledge.com \
    --exclude opencpn.org/wiki/dokuwiki \
    --exclude opencpn.org \
    --exclude twocanplugin@hotmail.com	\
    --exclude youtube.com \
    --exclude youtu.be \
    --suppress-redirect 'https://opencpn-manuals.github.io/plugins->https://opencpn-manuals.github.io/plugins/' \
    --masquerade "https://opencpn-manuals.github.io/plugins $PWD/docs" \
    --depth 4 -s docs/index.html |& grep -v "Use of uninitialized value"
