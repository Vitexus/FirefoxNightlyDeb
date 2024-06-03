❗❗❗ Please use official Mozilla's repository instead:
https://blog.nightly.mozilla.org/2023/10/30/introducing-mozillas-firefox-nightly-deb-packages-for-debian-based-linux-distributions/
❗❗❗

Firefox Nightly installer package for Debian / Ubuntu
=====================================================

![FirefoxNightly](firefox-nightly.svg?raw=true "Nightly logo")

Firefox Nightly gets a new version every day and as a consequence, the release notes for the Nightly channel are updated continuously to reflect features that have reached sufficient maturity to benefit from community feedback and bug reports. Features listed here may or may not make a final release of Firefox.


Building package
----------------

```shell
apt-get -y install devscripts dpkg-dev
git clone https://github.com/Vitexus/FirefoxNightlyDeb.git
debuild -i -us -uc -b
```

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
 
