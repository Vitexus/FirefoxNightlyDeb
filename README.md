Firefox Nightly package for Debian / Ubuntu
===========================================

![FirefoxNightly](https://raw.githubusercontent.com/Vitexus/FirefoxNightlyDeb/master/nightly.png "Nightly logo")

Firefox Nightly gets a new version every day and as a consequence, the release notes for the Nightly channel are updated continuously to reflect features that have reached sufficient maturity to benefit from community feedback and bug reports. Features listed here may or may not make a final release of Firefox.


Building package
----------------

    apt-get -y install devscripts dpkg-dev
    git clone https://github.com/Vitexus/FirefoxNightlyDeb.git
    debuild -i -us -uc -b


Installation
------------

Download from https://www.vitexsoftware.cz/pool/main/n/nightly/nightly_1.0.7_all.deb or Build package. Then install:

    gdebi nightly_1.0.7_all.deb


Or you can use repo:

    wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
    echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/vitexsoftware.list
    apt update
    apt install nightly

Testing
-------

    vagrant up
    vagrant ssh
    sudo apt install xfce4
    startxfce4


![Vagrant Test](https://raw.githubusercontent.com/Vitexus/FirefoxNightlyDeb/master/vagrantubuntu.png "Nightly in Ubuntu")
