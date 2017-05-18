Sources: https://github.com/irtimmer/moonlight-embedded

HOWTO:   http://embedded-software-architecture.com/?page_id=140

Credits: https://github.com/RoelofBerg/moonlightpisteambox

# Step 1 - Install
```shell
$ {
sudo apt update && sudo apt dist-upgrade -Vy &&
echo 'deb http://archive.itimmer.nl/raspbian/moonlight jessie main' | sudo tee /etc/apt/sources.list.d/moonlight.list &&
wget -qO - http://archive.itimmer.nl/itimmer.gpg | sudo apt-key add - &&
sudo apt update && sudo apt install -y wakeonlan moonlight-embedded &&
sudo usermod -a -G video $(id -un);
}
```

# Step 2 - pair
```shell
$ {
mkdir git && cd git &&
git clone git@github.com:link-webcreations/moonlight-config.git &&
cd ~/git/moonlight-config &&
chmod +x ./autostart.sh &&
moonlight pair 192.168.1.221;
}
```

# Step 3 - run
```shell
$ ~/git/moonlight-config/autostart.sh
```
