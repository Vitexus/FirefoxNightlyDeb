Firefox Nightly installer package for Debian / Ubuntu
=====================================================

![FirefoxNightly](nightly.svg?raw=true "Nightly logo")

Firefox Nightly gets a new version every day and as a consequence, the release notes for the Nightly channel are updated continuously to reflect features that have reached sufficient maturity to benefit from community feedback and bug reports. Features listed here may or may not make a final release of Firefox.


Building package
----------------

    apt-get -y install devscripts dpkg-dev
    git clone https://github.com/Vitexus/FirefoxNightlyDeb.git
    debuild -i -us -uc -b


Installation
------------

Download from https://repo.vitexsoftware.cz/  or Build package. Then install:

    gdebi nightly_71.0a1_all.deb


Or you can use repo:

```shell
sudo apt install lsb-release wget apt-transport-https bzip2
sudo wget -O /usr/share/keyrings/vitexsoftware.gpg https://repo.vitexsoftware.cz/keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/vitexsoftware.gpg]  https://repo.vitexsoftware.cz  $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
sudo apt update
sudo apt install nightly
```


![Updating](installing.png?raw=true "Updating")


Testing
-------

    vagrant up
    vagrant ssh
    sudo apt install xfce4
    startxfce4


![Vagrant Test](vagrantubuntu.png?raw=true "Nightly in Ubuntu")


See also
--------
 * https://github.com/Vitexus/ThunderbirdDailyDeb 
 * https://github.com/VitexSoftware/FirefoxDevelEditionDeb
 
